# OneJourney | Trusted AI Travel & Pilgrimage Planner

OneJourney is a premium, frontend-only Next.js application built for the hackathon project. It is designed to simplify and guide sacred journeys with trust, transparency, and utmost comfort, tailored especially for senior citizens and multigenerational family travels.

## Hackathon Problem Statement & Solution

**Problem**: Planning pilgrimage tours for seniors often suffers from high friction, lack of clarity, medical uncertainty, and complex logistics (VIP entry, wheelchair support, dietary restrictions).
**Solution**: OneJourney offers a fully accessible web platform featuring:
*   **Conversational AI Planner**: Guided chat wizard mapping user needs to matched itineraries.
*   **Elder-Care Checklists**: Filters for ground floor rooms, wheelchair access, medical support, and Satvik meals.
*   **Comparison & Favorites**: Side-by-side matrices comparing stays, transits, and guide options.
*   **Dynamic Itinerary Accordions**: Visual day-by-day routes and guest price calculators.

---

## Tech Stack
*   **Core Framework**: [Next.js](https://nextjs.org/) (App Router) & React 19
*   **Styling**: Tailwind CSS v4 (configured via `@theme` utility)
*   **Animations**: Framer Motion & Lenis (smooth momentum scroll)
*   **Iconography**: Lucide React & Google Material Symbols
*   **Notifications**: Sonner

---

## Getting Started

### Prerequisites
*   Node.js v18.0.0 or higher
*   npm (default package manager for this project)

### Installation
Clone the repository and install dependencies:
```bash
git clone https://github.com/subashp2255-gif/SIC068.git
cd SIC068
npm install
```

### Development
Start the local development server:
```bash
npm run dev
```
Open [http://localhost:3000](http://localhost:3000) to view it in the browser.

### Build Verification
To verify the production build:
```bash
npm run build
```

---

## Main Features & Pages
*   **Homepage (`/`)**: Hero search board routing selections to catalog filters, trust counts, and quick WhatsApp bookings.
*   **Tour Directory (`/packages`)**: Comprehensive list featuring search keywords, budget sliders, category selectors, and sticky compare cards drawer.
*   **Package Details (`/packages/[id]`)**: Full tour gallery, visual checklist inclusions, vertical timeline accordions, and pricing calculator.
*   **AI Custom Planner (`/ai-trip-planner`)**: Conversational chat questionnaire producing customized package recommendations.
*   **Comparison Matrix (`/compare`)**: Side-by-side comparative table of hotels, transit types, and guide availability.
*   **Favorites Portals (`/saved`)**: Hearted listings persisted in local storage.

---

## Environment Variables
This is a **frontend-only limitation** website utilizing local mock databases (`data/packages.ts`, `data/faq.ts`, `data/testimonials.ts`). It does not require any private database or environment variable configs to run locally.

---

## Team Collaboration Workflow

All team members must follow this workflow to ensure code health and avoid merge conflicts:

1. **Update local main**:
   ```bash
   git switch main
   git pull origin main
   ```

2. **Create a feature branch**:
   ```bash
   git switch -c feature/short-feature-name
   ```

3. **Make and test changes**.

4. **Commit**:
   ```bash
   git add .
   git commit -m "feat: describe the completed feature"
   ```

5. **Push**:
   ```bash
   git push -u origin feature/short-feature-name
   ```

6. **Open a pull request** from the feature branch into main.

7. **Do not push directly to main**.

### Recommended Branch Patterns
```text
feature/home-page
feature/package-details
feature/ai-trip-planner
feature/animations
feature/responsive-design
fix/mobile-navbar
fix/package-filter
docs/readme
```

### Recommended Commit Prefixes
*   `feat:`: New feature additions
*   `fix:`: Bug fixes or style adjustments
*   `style:`: Code formatting, layout spacing
*   `refactor:`: Code refactoring without functionality changes
*   `docs:`: Documentation updates
*   `chore:`: Configuration files, package installations
*   `test:`: Adding unit or integration tests
