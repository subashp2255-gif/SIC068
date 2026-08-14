export const easeQuint = [0.22, 1, 0.36, 1] as const;

export const fadeIn = {
  initial: { opacity: 0 },
  animate: { opacity: 1, transition: { duration: 0.5, ease: easeQuint } },
};

export const fadeUp = (delay = 0, y = 20) => ({
  initial: { opacity: 0, y },
  animate: {
    opacity: 1,
    y: 0,
    transition: { duration: 0.6, ease: easeQuint, delay },
  },
});

export const fadeDown = (delay = 0, y = 20) => ({
  initial: { opacity: 0, y: -y },
  animate: {
    opacity: 1,
    y: 0,
    transition: { duration: 0.6, ease: easeQuint, delay },
  },
});

export const scaleIn = (delay = 0) => ({
  initial: { opacity: 0, scale: 0.95 },
  animate: {
    opacity: 1,
    scale: 1,
    transition: { duration: 0.5, ease: easeQuint, delay },
  },
});

export const staggerContainer = {
  initial: {},
  animate: {
    transition: {
      staggerChildren: 0.1,
    },
  },
};

export const splitTextReveal = {
  initial: { y: "100%" },
  animate: {
    y: 0,
    transition: { duration: 0.8, ease: easeQuint },
  },
};

export const imageReveal = {
  initial: { clipPath: "polygon(0 0, 0 0, 0 100%, 0% 100%)" },
  animate: {
    clipPath: "polygon(0 0, 100% 0, 100% 100%, 0 100%)",
    transition: { duration: 0.8, ease: easeQuint },
  },
};

export const getAssetPath = (path: string) => {
  const isProd = process.env.NODE_ENV === "production";
  const basePath = isProd ? "/SIC068" : "";
  if (!path) return "";
  if (path.startsWith("http") || path.startsWith("data:")) return path;
  const cleanPath = path.startsWith("/") ? path : `/${path}`;
  return `${basePath}${cleanPath}`;
};

/**
 * Admin Operational Motion System
 * Information-dense, non-distracting animations for the Admin Command Centre
 */
export const adminMotion = {
  pageEntrance: {
    initial: { opacity: 0, y: 12 },
    animate: { opacity: 1, y: 0, transition: { duration: 0.32, ease: easeQuint } },
    exit: { opacity: 0, y: -8, transition: { duration: 0.2, ease: easeQuint } },
  },
  cardStagger: {
    initial: {},
    animate: {
      transition: {
        staggerChildren: 0.045,
      },
    },
  },
  cardItem: {
    initial: { opacity: 0, y: 14 },
    animate: { opacity: 1, y: 0, transition: { duration: 0.28, ease: easeQuint } },
  },
  drawerSpring: {
    initial: { x: "100%", opacity: 0.5 },
    animate: { x: 0, opacity: 1, transition: { type: "spring", damping: 28, stiffness: 300 } },
    exit: { x: "100%", opacity: 0, transition: { duration: 0.24, ease: easeQuint } },
  },
  modalScale: {
    initial: { opacity: 0, scale: 0.94 },
    animate: { opacity: 1, scale: 1, transition: { duration: 0.22, ease: easeQuint } },
    exit: { opacity: 0, scale: 0.94, transition: { duration: 0.16, ease: easeQuint } },
  },
  commandPalette: {
    initial: { opacity: 0, scale: 0.96, y: -10 },
    animate: { opacity: 1, scale: 1, y: 0, transition: { duration: 0.18, ease: easeQuint } },
    exit: { opacity: 0, scale: 0.96, y: -10, transition: { duration: 0.14, ease: easeQuint } },
  },
};


