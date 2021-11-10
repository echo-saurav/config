static const char norm_fg[] = "#e0d0dc";
static const char norm_bg[] = "#121212";
static const char norm_border[] = "#9c919a";

static const char sel_fg[] = "#e0d0dc";
static const char sel_bg[] = "#9F6C8F";
static const char sel_border[] = "#e0d0dc";

static const char urg_fg[] = "#e0d0dc";
static const char urg_bg[] = "#767086";
static const char urg_border[] = "#767086";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
