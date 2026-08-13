import React from "react";

interface OneJourneyTempleIconProps {
  className?: string;
  size?: number | string;
  "aria-hidden"?: boolean | "true" | "false";
}

/**
 * Reusable One Journey Brand Temple Icon Component.
 * Encapsulates the signature temple icon used across the header, footer, chatbot, and auth screens.
 */
export default function OneJourneyTempleIcon({
  className = "",
  size,
  "aria-hidden": ariaHidden = true,
}: OneJourneyTempleIconProps) {
  return (
    <span
      aria-hidden={ariaHidden}
      className={`material-symbols-outlined icon-fill inline-block select-none leading-none align-middle ${className}`}
      style={size ? { fontSize: typeof size === "number" ? `${size}px` : size } : undefined}
    >
      temple_hindu
    </span>
  );
}
