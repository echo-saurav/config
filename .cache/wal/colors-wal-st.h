const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#001C2D", /* black   */
  [1] = "#662A40", /* red     */
  [2] = "#863C32", /* green   */
  [3] = "#905017", /* yellow  */
  [4] = "#AA5A12", /* blue    */
  [5] = "#BB610E", /* magenta */
  [6] = "#96442C", /* cyan    */
  [7] = "#c99d8a", /* white   */

  /* 8 bright colors */
  [8]  = "#8c6d60",  /* black   */
  [9]  = "#662A40",  /* red     */
  [10] = "#863C32", /* green   */
  [11] = "#905017", /* yellow  */
  [12] = "#AA5A12", /* blue    */
  [13] = "#BB610E", /* magenta */
  [14] = "#96442C", /* cyan    */
  [15] = "#c99d8a", /* white   */

  /* special colors */
  [256] = "#001C2D", /* background */
  [257] = "#c99d8a", /* foreground */
  [258] = "#c99d8a",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
