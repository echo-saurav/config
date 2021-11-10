const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#121212", /* black   */
  [1] = "#767086", /* red     */
  [2] = "#9F6C8F", /* green   */
  [3] = "#C6739B", /* yellow  */
  [4] = "#7E848A", /* blue    */
  [5] = "#A594A9", /* magenta */
  [6] = "#C4A4BB", /* cyan    */
  [7] = "#e0d0dc", /* white   */

  /* 8 bright colors */
  [8]  = "#9c919a",  /* black   */
  [9]  = "#767086",  /* red     */
  [10] = "#9F6C8F", /* green   */
  [11] = "#C6739B", /* yellow  */
  [12] = "#7E848A", /* blue    */
  [13] = "#A594A9", /* magenta */
  [14] = "#C4A4BB", /* cyan    */
  [15] = "#e0d0dc", /* white   */

  /* special colors */
  [256] = "#121212", /* background */
  [257] = "#e0d0dc", /* foreground */
  [258] = "#e0d0dc",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
