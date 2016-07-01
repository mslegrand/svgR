# svgR
An R package to generate SVG markup to create custom graphics. 
Scripts using svgR can be embedding in R presentations, slides and Shiny applications. 

#Examples
A short example is:

    library(svgR)
    svgR(wh=c(800,600), circle(cxy=c(400,300), r=100))

Numerous examples, a User Guide, Structural Information and a tutorial can be found [here](
http://mslegrand.github.io/svgR/)

# Installation
- install.packages("devtools")
- library(devtools)
- install_github("svgR", "mslegrand")

# Reporting issues
Please report any bugs/issue in the 
[Github Issue tracker](https://github.com/mslegrand/svgR)

#Contributing
Suggestions, Examples and Contributions are appreciated.

#Licensing

svgR is released under MIT license. Copyright (c) 2015-2016 mslegrand. All rights reserved.

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.





