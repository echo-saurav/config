const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#0e1011", /* black   */
  [1] = "#5C5E5F", /* red     */
  [2] = "#AB1C1D", /* green   */
  [3] = "#19678C", /* yellow  */
  [4] = "#19688D", /* blue    */
  [5] = "#7D7F80", /* magenta */
  [6] = "#7F8081", /* cyan    */
  [7] = "#c7c8c8", /* white   */

  /* 8 bright colors */
  [8]  = "#8b8c8c",  /* black   */
  [9]  = "#5C5E5F",  /* red     */
  [10] = "#AB1C1D", /* green   */
  [11] = "#19678C", /* yellow  */
  [12] = "#19688D", /* blue    */
  [13] = "#7D7F80", /* magenta */
  [14] = "#7F8081", /* cyan    */
  [15] = "#c7c8c8", /* white   */

  /* special colors */
  [256] = "#0e1011", /* background */
  [257] = "#c7c8c8", /* foreground */
  [258] = "#c7c8c8",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
