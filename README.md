# svgR
An R package to generate SVG markup to create custom graphics. 
Scripts using svgR can be embedding in R presentations, slides and Shiny applications. 

# Examples
A short example is:

```
    library(svgR)
    svgR(wh=c(800,600), circle(cxy=c(400,300), r=100))
```

# Moreinfo at 

Checkout [http://mslegrand.github.io/svgR/](
http://mslegrand.github.io/svgR/) for

- Tutorial
- User Guide
- Structural Information
- Numerous examples



# Installation & Updates

1. Install  the [drat](http://eddelbuettel.github.io/drat/) package manager.

```
install.packages("drat", repos="http://cran.rstudio.com")
```
2.  Add one line to your .Rprofile file (or to Rprofile.site)

```
drat:::add("mslegrand")
```

If you don't have an .Rprofile, you should really consider adding one. It can be quite useful. 

See [Customizing Startup](http://www.statmethods.net/interface/customizing.html)

3. Install or update 

```
install.packages("svgR", "pointR", "shinyDMDMenu")
```

```
update.packages("svgR", "pointR", "shinyDMDMenu")
```

# Reporting issues
Please report any bugs/issue in the 
[Github Issue tracker](https://github.com/mslegrand/svgR)

#Contributing
Suggestions, Examples and Contributions are appreciated.

#Licensing

svgR is released under MIT license. Copyright (c) 2015-2016 mslegrand. All rights reserved.

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.





