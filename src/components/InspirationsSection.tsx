import React, { useRef } from "react";
import { gsap } from "gsap";
import { ScrollTrigger } from "gsap/ScrollTrigger";
import { useGSAP } from "@gsap/react";

// Register the ScrollTrigger plugin with GSAP
gsap.registerPlugin(ScrollTrigger);

const inspirations = [
  {
    name: "v0.dev",
    href: "https://v0.dev/",
    tagline: "Generative UI design for prototyping solutions.",
    icon: "✨",
  },
  {
    name: "tldraw",
    href: "https://www.tldraw.com/",
    tagline: "Whiteboarding ideas with AI involved.",
    icon: "✏️",
  },
  {
    name: "Linear",
    href: "https://linear.app/",
    tagline: "Project management done right.",
    icon: "🛠️",
  },

  {
    name: "excalidraw",
    href: "https://excalidraw.com/",
    tagline: "Virtual whiteboard for sketching diagrams without distraction.",
    icon: "🎨",
  },
  {
    name: "notebooklm",
    href: "https://notebooklm.google/",
    tagline: "AI-powered research and studying.",
    icon: "📝",
  },
  {
    name: "sora",
    href: "https://openai.com/sora/",
    tagline: "Video editing with AI assistance and automation.",
    icon: "🚀",
  },
];

export function InspirationsSection() {
  const containerRef = useRef<HTMLDivElement>(null);

  // useGSAP provides a context for animations, ensuring proper cleanup in React
  useGSAP(
    () => {
      // Animate the cards staggering in when the container enters the viewport
      gsap.from(".inspiration-card", {
        scrollTrigger: {
          trigger: containerRef.current,
          start: "top 80%", // Starts animation when the top of the container hits 80% from the top of the viewport
          toggleActions: "play none none none", // Ensures the animation only plays once on enter
        },
        opacity: 0,
        y: 60,
        stagger: 0.1,
        duration: 0.8,
        ease: "power2.out",
      });

      // --- Advanced Hover Effects ---
      // For a larger component, it would be best to move this logic into a separate
      // <InspirationCard> component. For this file, we'll keep it here for clarity.
      const cards = gsap.utils.toArray<HTMLElement>(".inspiration-card");

      cards.forEach((card) => {
        // Define animations but don't play them yet
        const liftAndHighlight = gsap.to(card, {
          paused: true, // Animation is paused initially
          y: -10,
          boxShadow: "8px 8px 0px 0px var(--accent-color)",
          duration: 0.2,
          ease: "power1.inOut",
        });

        // Play the animation on mouseenter
        card.addEventListener("mouseenter", () => liftAndHighlight.play());
        // Reverse the animation on mouseleave
        card.addEventListener("mouseleave", () => liftAndHighlight.reverse());
      });
    },
    { scope: containerRef },
  ); // Scope animations to the container for better performance and cleanup

  return (
    <section className="mt-32 px-5 md:px-0 md:mx-auto md:max-w-6xl">
      {/* Container for the responsive grid and GSAP scope */}
      <div
        ref={containerRef}
        className="grid grid-cols-1 gap-8 sm:grid-cols-2 lg:grid-cols-4"
        style={{ "--accent-color": "#00FF00" } as React.CSSProperties} // Define your accent color here
      >
        {inspirations.map((insp, idx) => (
          <a
            key={idx}
            href={insp.href}
            target="_blank"
            rel="noopener noreferrer"
            // The card itself: This is the target for our GSAP animations
            className="inspiration-card group flex items-start gap-4 border-4 border-black bg-white p-6 transition-colors duration-200"
            // Use group-hover for simple CSS hover effects on child elements if needed
          >
            <span className="text-3xl">{insp.icon}</span>
            <div>
              <div className="font-bold text-lg text-black">{insp.name}</div>
              <p className="text-sm text-gray-700">{insp.tagline}</p>
            </div>
          </a>
        ))}
      </div>
    </section>
  );
}
