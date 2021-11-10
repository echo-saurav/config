static const char norm_fg[] = "#c7c8c8";
static const char norm_bg[] = "#0e1011";
static const char norm_border[] = "#8b8c8c";

static const char sel_fg[] = "#c7c8c8";
static const char sel_bg[] = "#AB1C1D";
static const char sel_border[] = "#c7c8c8";

static const char urg_fg[] = "#c7c8c8";
static const char urg_bg[] = "#5C5E5F";
static const char urg_border[] = "#5C5E5F";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
