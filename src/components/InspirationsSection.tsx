import React, { useRef } from "react";
import { gsap } from "gsap";
import { ScrollTrigger } from "gsap/ScrollTrigger";
import { useGSAP } from "@gsap/react";

gsap.registerPlugin(ScrollTrigger);

const inspirations = [
  // Your inspirations data remains the same...
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

  useGSAP(
    () => {
      // --- 1. ENTRANCE ANIMATION ---
      // FIX: Target individual cards (.inspiration-card) for stagger to work properly.
      gsap.from(".inspiration-card", {
        scrollTrigger: {
          trigger: containerRef.current,
          start: "top 80%",
          toggleActions: "play none none none",
          markers: false,
        },
        opacity: 0,
        y: 60,
        stagger: 0.1, // Now this stagger will work correctly!
        duration: 1,
        ease: "power2.out",
      });

      // --- 2. HOVER & FOCUS ANIMATION ---
      const cards = gsap.utils.toArray<HTMLElement>(".inspiration-card");

      cards.forEach((card) => {
        // Define the animation for a single card
        const hoverAnimation = gsap.to(card, {
          paused: true,
          y: -10,
          skewY: -2, // IMPROVEMENT: skewY is now controlled by GSAP
          rotate: -1, // IMPROVEMENT: Added subtle rotation for more personality
          boxShadow: "8px 12px 0px 0px var(--accent-color)",
          duration: 0.2,
          ease: "power1.inOut",
        });

        // Play the animation on mouseenter or focusin
        const onEnter = () => {
          hoverAnimation.play();
          // IMPROVEMENT: Fade out all OTHER cards to create focus
          cards.forEach((otherCard) => {
            if (otherCard !== card) {
              gsap.to(otherCard, { opacity: 0.6, duration: 0.2 });
            }
          });
        };

        // Reverse the animation on mouseleave or focusout
        const onLeave = () => {
          hoverAnimation.reverse();
          // IMPROVEMENT: Bring all cards back to full opacity
          gsap.to(cards, { opacity: 1, duration: 0.2 });
        };

        // ACCESSIBILITY: Add events for both mouse and keyboard focus
        card.addEventListener("mouseenter", onEnter);
        card.addEventListener("mouseleave", onLeave);
        card.addEventListener("focusin", onEnter);
        card.addEventListener("focusout", onLeave);
      });
    },
    { scope: containerRef },
  );

  const bgColors = ["bg-my-white"];
  return (
    <div
      ref={containerRef}
      className="mt-24 grid grid-cols-1 gap-8 sm:grid-cols-2 lg:grid-cols-4"
      style={{ "--accent-color": "var(--main)" } as React.CSSProperties}
    >
      {inspirations.map((insp, idx) => (
        <a
          key={idx}
          href={insp.href}
          target="_blank"
          rel="noopener noreferrer"
          className={`inspiration-card flex items-start gap-4 p-6 rounded-base border-4 border-black shadow-[4px_4px_0_rgba(0,0,0,1)] ${bgColors[idx % bgColors.length]}`}
        >
          <span className="text-xl">{insp.icon}</span>
          <div>
            <div className="font-semibold text-lg">{insp.name}</div>
            <p className="text-sm text-mtext">{insp.tagline}</p>
          </div>
        </a>
      ))}
    </div>
  );
}
