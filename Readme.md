# Vim - Search4dDocs

This plugin should enable the user to trigger a search in the 4D documentation 
(http://docs.4d.com) or the Active4D documentation (which you will have to locally download)

## Installation:

1. Save the script to your user directory
2. :source ~/search4dDocs.vim (you can add this to your .vimrc file)
3. Highlight the text you want to search the docs for

---This is all that is needed to enable 4D docs search. For searching the Active4D documentation, continue:

4. For Active4D support - Download a copy of the Active 4D docs to your user directory.
5. Install XPDF (www.foolabs.com/xpdf). Edit your path variables to ensure that it can run in the command-line.
6. :call GenerateActive4dDocs(). Replace the PDF filename in the script if it differs from yours.


Happy Vimming!

## License 

(The MIT License)

Copyright (c) 2011

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

