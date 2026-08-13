"use client";

import React, { useEffect, useRef } from "react";
import { motion } from "framer-motion";
import { getAssetPath } from "@/lib/animations";
import { ShieldCheck, HeartHandshake, Compass, Sparkles } from "lucide-react";

export default function JourneyBackdrop() {
  const canvasRef = useRef<HTMLCanvasElement | null>(null);

  // Floating Golden Particles Canvas Animation
  useEffect(() => {
    const canvas = canvasRef.current;
    if (!canvas) return;

    // Check prefers-reduced-motion
    const mediaQuery = window.matchMedia("(prefers-reduced-motion: reduce)");
    if (mediaQuery.matches) return; // Skip particle animation for reduced motion

    const ctx = canvas.getContext("2d");
    if (!ctx) return;

    let animationFrameId: number;
    let width = (canvas.width = canvas.offsetWidth);
    let height = (canvas.height = canvas.offsetHeight);

    const handleResize = () => {
      if (!canvas) return;
      width = canvas.width = canvas.offsetWidth;
      height = canvas.height = canvas.offsetHeight;
    };

    window.addEventListener("resize", handleResize);

    // Particle pool setup (kept light for maximum performance)
    const particleCount = Math.min(35, Math.floor((width * height) / 25000));
    const particles = Array.from({ length: particleCount }, () => ({
      x: Math.random() * width,
      y: Math.random() * height,
      radius: Math.random() * 1.8 + 0.6,
      opacity: Math.random() * 0.5 + 0.2,
      speedY: Math.random() * 0.3 + 0.1,
      speedX: (Math.random() - 0.5) * 0.2,
      pulse: Math.random() * 0.02 + 0.005,
    }));

    const render = () => {
      ctx.clearRect(0, 0, width, height);

      particles.forEach((p) => {
        p.y -= p.speedY;
        p.x += p.speedX;

        // Pulse opacity
        p.opacity += Math.sin(Date.now() * p.pulse) * 0.003;
        if (p.opacity > 0.75) p.opacity = 0.75;
        if (p.opacity < 0.1) p.opacity = 0.1;

        // Reset particle position when floating past top or sides
        if (p.y < -10) {
          p.y = height + 10;
          p.x = Math.random() * width;
        }
        if (p.x < -10) p.x = width + 10;
        if (p.x > width + 10) p.x = -10;

        ctx.beginPath();
        ctx.arc(p.x, p.y, p.radius, 0, Math.PI * 2);
        ctx.fillStyle = `rgba(230, 184, 92, ${p.opacity})`;
        ctx.fill();
      });

      animationFrameId = requestAnimationFrame(render);
    };

    render();

    return () => {
      window.removeEventListener("resize", handleResize);
      cancelAnimationFrame(animationFrameId);
    };
  }, []);

  const trustIndicators = [
    {
      icon: ShieldCheck,
      title: "Transparent package details",
    },
    {
      icon: HeartHandshake,
      title: "Senior-friendly planning",
    },
    {
      icon: Compass,
      title: "Thoughtfully guided journeys",
    },
  ];

  return (
    <aside
      className="relative w-full lg:w-[58%] min-h-[420px] lg:min-h-[100dvh] flex flex-col justify-between p-8 sm:p-12 lg:p-16 text-white overflow-hidden select-none"
      aria-label="Pilgrimage Backdrop"
    >
      {/* Background Image with initial subtle zoom */}
      <motion.div
        className="absolute inset-0 z-0 bg-cover bg-center bg-no-repeat"
        style={{
          backgroundImage: `url(${getAssetPath("/images/hero_dawn_temple.png")})`,
        }}
        initial={{ scale: 1.04 }}
        animate={{ scale: 1 }}
        transition={{ duration: 1.4, ease: [0.22, 1, 0.36, 1] }}
      />

      {/* Layered Cinematic Overlays */}
      <div
        aria-hidden="true"
        className="absolute inset-0 z-[1] bg-gradient-to-r from-[#091C2E]/95 via-[#102F4A]/85 to-[#102F4A]/95"
      />
      <div
        aria-hidden="true"
        className="absolute inset-0 z-[2] bg-[radial-gradient(circle_at_20%_20%,rgba(230,184,92,0.18)_0%,transparent_60%)]"
      />
      <div
        aria-hidden="true"
        className="absolute inset-0 z-[2] bg-gradient-to-t from-[#0D263D] via-transparent to-transparent opacity-90"
      />

      {/* Light Sweep Pass Effect */}
      <motion.div
        aria-hidden="true"
        className="absolute inset-0 z-[3] pointer-events-none"
        initial={{ opacity: 0, x: "-100%" }}
        animate={{ opacity: [0, 0.4, 0], x: "100%" }}
        transition={{ duration: 2.2, delay: 0.5, ease: "easeInOut" }}
        style={{
          background:
            "linear-gradient(105deg, transparent 40%, rgba(230, 184, 92, 0.15) 50%, transparent 60%)",
        }}
      />

      {/* Floating Particles Canvas */}
      <canvas
        ref={canvasRef}
        aria-hidden="true"
        className="absolute inset-0 z-[3] pointer-events-none w-full h-full"
      />

      {/* Top Header Badge */}
      <div className="relative z-10">
        <motion.div
          initial={{ opacity: 0, y: -10 }}
          animate={{ opacity: 1, y: 0 }}
          transition={{ duration: 0.6, delay: 0.2 }}
          className="inline-flex items-center gap-2 px-3.5 py-1.5 rounded-full bg-white/10 backdrop-blur-md border border-[#E6B85C]/30 text-[#E6B85C] text-xs font-bold tracking-widest uppercase shadow-sm"
        >
          <Sparkles className="w-3.5 h-3.5" />
          <span>One Journey</span>
        </motion.div>
      </div>

      {/* Main Brand Message */}
      <div className="relative z-10 my-auto py-10 lg:py-16 max-w-xl">
        <motion.div
          initial={{ opacity: 0, y: 20 }}
          animate={{ opacity: 1, y: 0 }}
          transition={{ duration: 0.7, delay: 0.3 }}
        >
          <h1 className="font-display text-3xl sm:text-4xl lg:text-5xl font-extrabold leading-[1.18] tracking-tight text-white drop-shadow-md">
            Every sacred destination begins with{" "}
            <span className="text-transparent bg-clip-text bg-gradient-to-r from-[#FFF9F0] via-[#E6B85C] to-[#D89A32]">
              one trusted step.
            </span>
          </h1>
        </motion.div>

        <motion.p
          initial={{ opacity: 0, y: 15 }}
          animate={{ opacity: 1, y: 0 }}
          transition={{ duration: 0.6, delay: 0.45 }}
          className="mt-4 text-base sm:text-lg text-slate-200/90 font-normal leading-relaxed max-w-lg"
        >
          Sign in to continue planning meaningful pilgrimages for you and your family.
        </motion.p>

        {/* Three Trust Indicators */}
        <motion.div
          initial={{ opacity: 0, y: 20 }}
          animate={{ opacity: 1, y: 0 }}
          transition={{ duration: 0.7, delay: 0.6 }}
          className="mt-8 pt-8 border-t border-white/15 grid grid-cols-1 sm:grid-cols-3 gap-4"
        >
          {trustIndicators.map((item, idx) => {
            const IconComponent = item.icon;
            return (
              <div
                key={idx}
                className="flex items-center gap-3 p-3 rounded-xl bg-white/5 backdrop-blur-sm border border-white/10 hover:bg-white/10 transition-colors"
              >
                <div className="w-8 h-8 rounded-lg bg-[#E6B85C]/20 border border-[#E6B85C]/30 flex items-center justify-center shrink-0">
                  <IconComponent className="w-4 h-4 text-[#E6B85C]" />
                </div>
                <span className="text-xs font-medium text-slate-200 leading-tight">
                  {item.title}
                </span>
              </div>
            );
          })}
        </motion.div>
      </div>

      {/* Bottom Footer note */}
      <div className="relative z-10 text-xs text-slate-400/80 font-medium hidden lg:block">
        © {new Date().getFullYear()} Pilgrimage — One Journey. All rights reserved.
      </div>
    </aside>
  );
}
