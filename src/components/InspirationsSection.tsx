import React, { useEffect, useRef } from "react";
import { gsap } from "gsap";

type Inspiration = {
  name: string;
  href: string;
  tagline: string;
  icon: string;
  bg: string;
};

const inspirations: Inspiration[] = [
  {
    name: "tldraw",
    href: "https://www.tldraw.com/",
    tagline: "Sketch ideas collaboratively.",
    icon: "✏️",
    bg: "bg-purple-200",
  },
  {
    name: "notebooklm",
    href: "https://notebooklm.google/",
    tagline: "AI-powered research booster.",
    icon: "📝",
    bg: "bg-green-200",
  },
  {
    name: "sora",
    href: "https://openai.com/sora/",
    tagline: "Next-gen assistant agent.",
    icon: "🚀",
    bg: "bg-pink-200",
  },
  {
    name: "excalidraw",
    href: "https://excalidraw.com/",
    tagline: "Virtual whiteboard for sketching diagrams.",
    icon: "🎨",
    bg: "bg-yellow-200",
  },
];

export function InspirationsSection() {
  const containerRef = useRef<HTMLDivElement>(null);
  useEffect(() => {
    if (!containerRef.current) return;
    const cards = Array.from(containerRef.current.children as HTMLCollection);
    gsap.from(cards, {
      y: 50,
      opacity: 0,
      stagger: 0.2,
      duration: 0.8,
      ease: "back.out(1.7)",
    });
    cards.forEach((card) => {
      card.addEventListener("mouseenter", () => {
        gsap.to(card, {
          y: -5,
          boxShadow: "0px 8px 0px rgba(0,0,0,1)",
          duration: 0.2,
        });
      });
      card.addEventListener("mouseleave", () => {
        gsap.to(card, {
          y: 0,
          boxShadow: "0px 4px 0px rgba(0,0,0,1)",
          duration: 0.2,
        });
      });
      card.addEventListener("mousedown", () => {
        gsap.to(card, { scale: 0.95, duration: 0.1 });
      });
      card.addEventListener("mouseup", () => {
        gsap.to(card, { scale: 1, duration: 0.1 });
      });
    });
  }, []);
  return (
    <section
      id="inspirations"
      className="mt-32 px-5 md:px-0 md:mx-auto md:max-w-6xl"
    >
      <div ref={containerRef} className="flex flex-col md:flex-row gap-6">
        {inspirations.map((insp, idx) => (
          <a
            key={idx}
            href={insp.href}
            target="_blank"
            rel="noopener"
            className={`flex items-center gap-3 p-6 border-4 border-black ${insp.bg} rounded-base shadow-[4px_4px_0_rgba(0,0,0,1)]`}
          >
            <span className="text-2xl">{insp.icon}</span>
            <div>
              <div className="font-bold">{insp.name}</div>
              <div className="text-sm">{insp.tagline}</div>
            </div>
          </a>
        ))}
      </div>
    </section>
  );
}
