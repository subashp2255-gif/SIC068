import { NextResponse } from "next/server";

export async function POST(request: Request) {
  try {
    const { message, context, conversationHistory } = await request.json();

    if (!message || typeof message !== "string") {
      return NextResponse.json(
        { success: false, error: "Message text is required." },
        { status: 400 }
      );
    }

    const cleanMsg = message.trim().toLowerCase();
    const apiKey = process.env.GEMINI_API_KEY;

    if (apiKey) {
      try {
        const promptText = `
You are the OneJourney AI Travel Assistant for OneJourney (a trusted pilgrimage, family, and group tour travel platform in India).
Current user page context: ${JSON.stringify(context || {})}
User question: "${message}"

Provide a warm, respectful, concise, and accurate answer (max 3 short paragraphs). Mention specific details like senior-friendly comfort, transparent pricing, verified stays, and customized itineraries.
`;
        const res = await fetch(
          `https://generativelanguage.googleapis.com/v1beta/models/gemini-1.5-flash:generateContent?key=${apiKey}`,
          {
            method: "POST",
            headers: { "Content-Type": "application/json" },
            body: JSON.stringify({
              contents: [{ parts: [{ text: promptText }] }],
            }),
          }
        );
        const data = await res.json();
        const reply =
          data?.candidates?.[0]?.content?.parts?.[0]?.text || null;

        if (reply) {
          return NextResponse.json({ success: true, reply, source: "gemini" });
        }
      } catch (e) {
        console.error("Gemini API call error:", e);
      }
    }

    // Fallback Intelligent Knowledge Base Engine
    let reply = "";
    let quickActions: string[] = [];

    if (cleanMsg.includes("senior") || cleanMsg.includes("elder") || cleanMsg.includes("wheelchair")) {
      reply =
        "At OneJourney, all senior citizen pilgrimage & family tours are crafted with special care. We offer slow-paced itineraries, ground-floor/elevator hotel rooms, hygienic vegetarian meals, minimal walking, and dedicated local guides to assist elders every step of the way.";
      quickActions = ["View Senior Friendly Tours", "Talk to Travel Expert", "Customise Pace"];
    } else if (cleanMsg.includes("price") || cleanMsg.includes("cost") || cleanMsg.includes("inclusion") || cleanMsg.includes("hidden")) {
      reply =
        "OneJourney practices 100% transparent pricing with zero hidden fees. Every package clearly lists hotel stays, AC transit, meals, guided temple visits, entry passes, and taxes. Flexible EMI options starting from ₹1,500/month are also available!";
      quickActions = ["View Pricing Inclusions", "Compare Packages", "Calculate Group Price"];
    } else if (cleanMsg.includes("group") || cleanMsg.includes("family") || cleanMsg.includes("discount")) {
      reply =
        "Planning for a family or group yatra? We offer custom private coaches, dedicated trip coordinators, flexible dining arrangements, and attractive group discounts for 6+ travellers.";
      quickActions = ["Explore Group Tours", "Custom Group Request", "Talk to Coordinator"];
    } else if (cleanMsg.includes("pilgrimage") || cleanMsg.includes("hindu") || cleanMsg.includes("buddhist") || cleanMsg.includes("christian") || cleanMsg.includes("islam")) {
      reply =
        "OneJourney offers inclusive pilgrimage tours across multiple faiths—including Char Dham, Kashi Varanasi, Jyotirlinga circuits, Buddhist Heritage Trail, Velankanni Church, and Ajmer Sharif. Each tour respects sacred traditions and local etiquette.";
      quickActions = ["Explore Pilgrimage Tours", "Char Dham Yatra", "Varanasi Package"];
    } else if (cleanMsg.includes("ai") || cleanMsg.includes("plan") || cleanMsg.includes("custom")) {
      reply =
        "Our AI Trip Planner helps you craft a custom day-by-day itinerary tailored to your group size, budget, preferred pace, and accessibility needs in less than 60 seconds!";
      quickActions = ["Launch AI Trip Planner", "View Popular Itineraries"];
    } else {
      reply =
        "Namaste! Welcome to OneJourney. I'm here to assist you with pilgrimage tours, family packages, group bookings, pricing transparency, and personalized AI trip planning. How can I help guide your journey today?";
      quickActions = ["Explore Pilgrimage Tours", "Is this senior-friendly?", "Plan with AI", "Speak to Expert"];
    }

    return NextResponse.json({
      success: true,
      reply,
      quickActions,
      source: "knowledge-base",
    });
  } catch (error) {
    console.error("AI Chat route error:", error);
    return NextResponse.json(
      {
        success: false,
        reply: "Apologies! I am having trouble connecting right now. Please feel free to click 'Enquire Now' or call our helpline at +91 1800-745-4746.",
      },
      { status: 500 }
    );
  }
}
