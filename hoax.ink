
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    
<title>Rentry.co - Markdown Paste Service</title>
<link rel="canonical" href="https://rentry.co/" />

    </script>

    <script>document.documentElement.classList.toggle("dark-mode", (localStorage.getItem("dark-mode") === null && window.matchMedia("(prefers-color-scheme: dark)").matches || localStorage.getItem("dark-mode") == "true"));</script>
    <script>const script = document.createElement("script"); const hn = window.location.hostname === 'rentry.org' && 'rentry.org' || 'rentry.co'; script.defer = true; script.setAttribute('data-domain', hn + ',rentry'); document.head.appendChild(script);</script>

    
    
</head>

<body class="m-0 p-0">

    <div class="container container-smooth">
        <div class="row no-gutters">
            
<div class="col-12" style="display: flex; min-height: 100vh; max-height: 100vh">
    <form id="entry-form" class="long-words-overflow-y" action="" method="post" style="display: flex; flex: 1 0; flex-direction: column;">
        

        <input type="hidden" name="csrfmiddlewaretoken" value="0fEocvboYH6QokZoKNU2Snao7XwqFQ7MNBlR0iNqVQlDN8ygraA6OB4nsZWXDbS3">
<div role="tabpanel" class="my-2 flex-tab" style="display: flex; flex: 1 0; flex-direction: column; min-height: 15em">
    <div class="text-danger messages"></div>

    <ul class="nav nav-tabs squared" id="textTab" role="tablist">
        <li class="nav-item" style="background-color: #F3F4F6">
            <a class="nav-link active squared text-muted px-3" id="text-tab" data-toggle="tab" href="#text" role="tab" aria-controls="text" aria-expanded="true">Text</a>
        </li>

        <li class="nav-item" style="background-color: #F3F4F6">
            <a class="nav-link squared text-muted px-3" id="preview-tab" data-toggle="tab" href="#preview" role="tab" aria-controls="preview">Preview</a>
        </li>

        <li class="nav-item" style="background-color: #F3F4F6">
            <a class="nav-link squared text-muted px-3" id="how-tab" data-toggle="tab" href="#how" role="tab" aria-controls="preview">How</a>
        </li>
    </ul>

    <div class="markdownx" style="display: flex; flex: 1 0; min-height: 0;">

        <div>
            <div style="position: absolute; width: 100%; z-index: 1">
                <div class="progress">
                    <div class="bg-primary" id="progressBar"></div>
                </div>
            </div>
        </div>

        <div class="tab-content long-words" id="textTabContent" style="display: flex; flex: 1 0; min-height: 0;">

            <div role="tabpanel" class="tab-pane fade show active" id="text" aria-labelledby="text-tab" style="flex: 1 0;">
                <textarea style="background-color: white; min-height: 100%; max-height: 100%; resize: none; max-width: 100%; min-width: 100%" class="squared markdownx-editor py-4 px-2 px-sm-4 " name="text" maxlength="200000" id="id_text" data-markdownx-upload-urls-path="/markdownx/upload/" data-markdownx-urls-path="/markdownx/markdownify/"></textarea>
            </div>

            <div class="tab-pane fade" id="preview" role="tabpanel" aria-labelledby="preview-tab" style="flex: 1 0; flex-direction: column; overflow-y: auto;">
                <div class="long-words markdownx-preview px-2 px-sm-4" id='preview-inner' style="background-color: white; flex: 1 0; overflow-y: auto; padding-top:0.1px; padding-bottom:0.1px"></div>
            </div>

            <div class="tab-pane fade" id="how" role="tabpanel" aria-labelledby="how-tab" style="flex: 1 0; flex-direction: column; overflow-y: auto;">
                <div class="long-words entry-text py-2 px-sm-4" id="how-inner" style="background-color: white; color: black; flex: 1 0; overflow-y: auto;">
                    <table class="ntable mtable cheatsheet">
    <thead>
        <tr class="text-center">
            <th class="bg-transparent">What you type</th>
            <th class="bg-transparent">What will be published</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>
                # Header 1<br>
                ## Header 2<br><br>
                <span class="text-muted">And so on up to 6.</span>
            </td>
            <td>
                <p id="header-1" class="p-0 m-0 text-center h3">Header 1</p>
                <p id="header-2" class="p-2 pt-3 m-0 h4">Header 2</p>
                <p id="another-2" class="d-none">Another 2</p>
                <p id="another-1" class="d-none">Another 1</p>
            </td>
        </tr>
        <tr>
            <td>
                <span class="text-muted">Return once starts a new line.<br>Return twice (blank line) starts a new paragraph.</span><br>
            </td>
            <td></td>
        </tr>
        <tr>
            <td>
                *Italics*<br>
                **Bold**<br>
                ~~Strikeout~~<br>
                ==Mark==<br>
                %red% Colored Text %%<br>
                %#ACBDEF% Colored Text Hex %%<br>
                !>Spoiler<br><br>
                <span class="text-muted"><a href="/rentry-text-colors" target="_blank">Color list (opens new page, save your work first!)</a></span>
                
            </td>
            <td>
                <i>Italics</i><br>
                <b>Bold</b><br>
                <del>Strikeout</del><br>
                <mark>Mark</mark><br>
                <span style="color:red">Colored Text</span><br>
                <span style="color:#8b35c8">Colored Text Hex</span><br>
                <span class="spoiler">Spoiler</span>
            </td>
        </tr>
        <tr>
            <td>
                !~ Simple Underlined Text ~!<br>
                !~red; Underlined Text With Color ~!<br>
                !~green;double; Underlined Text Plus Style ~!<br>
                !~blue;default;line-through; Underlined Plus Type ~!<br>
                !~orange;default;default;7; Underlined Text Plus Thickness ~!<br><br>

                %violet% !~green; Combine With Text Color ~! %%<br>
                !~violet; %green% Works The Other Way Too %% ~! <br><br>

                <span class="text-muted">Underline tags can be given 4 options, separated by a semi-colon ;</span>
                <ul class="text-muted">
                    <li>color : default | color name | #hexcode</li>
                    <li>style  : default | solid (default) | double | dotted | dashed | wavy</li>
                    <li>type  : default | underline (default) | line-through | overline | both</li>
                    <li>thickness : number from 1-10. Measured in pixels.</li>
                </ul>
            </td>
            <td>
                <span style="text-decoration:underline">Simple Underlined Text</span><br>
                <span style="text-decoration-line:underline;text-decoration-color:red">Underlined Text With Color</span><br>
                <span style="text-decoration-line:underline;text-decoration-color:green;text-decoration-style:double;">Underlined Text Plus Style</span><br>
                <span style="text-decoration-line:underline;text-decoration-color:blue;text-decoration-line:line-through;">Underlined Plus Type</span><br>
                <span style="text-decoration-line:underline;text-decoration-color:orange;text-decoration-thickness:7px;">Underlined Text Plus Thickness</span><br><br>
                <span style="text-decoration-line:underline;text-decoration-color:green;color:violet">Combine With Text Color</span><br>
                <span style="text-decoration-line:underline;text-decoration-color:violet;color:green">Works The Other Way Too</span><br><br>
            </td>
        </tr>
        <tr>
            <td>
                -&gt; Centered text &lt;-<br>
                -&gt; Right-aligned -&gt;<br><br>
                <span class="text-muted">Also works for images and ### -&gt; Headers &lt;-</span>
                <br>
            </td>
            <td>
                <span class="md-center">Centered text</span>
                <span class="md-right">Right-aligned</span>
            </td>
        </tr>
        <tr>
            <td>
                [TOC]<br><br>
                <span class="text-muted">Generates Table of Contents from #&nbsp;Headers.<br>
                    [TOC2] - From h2 to h6.<br>
                    [TOC3] - From h3 to h6, and so on up to 6.
                </span>
            </td>
            <td>
                <div class="toc">
                    <ol>
                        <li><a href="#header-1">Header 1</a>
                            <ol>
                                <li><a href="#header-2">Header 2</a></li>
                                <li><a href="#another-2">Another 2</a></li>
                            </ol>
                        </li>
                        <li><a href="#another-1">Another 1</a></li>
                    </ol>
                </div>
            </td>
        </tr>
        <tr>
            <td>
                - Bulleted list item a<br>
                - Bulleted list item b<br>
                &nbsp;&nbsp;&nbsp;&nbsp;- Nested item b1<br><br>
                <span class="text-muted">Nested lists use 4 spaces or 1 tab.</span><br><br>
                <span class="text-muted">An asterisk (*) can be used instead of a dash.</span>
            </td>
            <td>

                <ul>
                    <li class="mt-0">Bulleted list item a</li>
                    <li>Bulleted list item b<ul>
                            <li>Nested item b1</li>
                        </ul>
                    </li>
                </ul>
            </td>
        </tr>
        <tr>
            <td>
                1. Numbered list item<br>
                2. Numbered list item<br>
                &nbsp;&nbsp;&nbsp;&nbsp;1. Nested list item<br>
                &nbsp;&nbsp;&nbsp;&nbsp;2. Nested list item
            </td>
            <td>
                <ol>
                    <li class="mt-0">Numbered list item</li>
                    <li>Numbered list item<ol>
                            <li>Nested list item</li>
                            <li>Nested list item</li>
                        </ol>
                    </li>
                </ol>
            </td>
        </tr>
        <tr>
            <td>
                - [ ] Checkbox 1<br>
                - [x] Checkbox 2<br>
            </td>
            <td>
                <ul class="task-list">
                    <li class="mt-0"><input type="checkbox" disabled> Checkbox 1</li>
                    <li><input type="checkbox" disabled checked> Checkbox 2</li>
                </ul>
            </td>
        </tr>
        <tr>
            <td>
                &gt;&gt; How to use quotes in Markdown?<br>
                &gt; Just prepend text with &gt;
            </td>
            <td>
                <blockquote>
                    <blockquote>
                        <p>How to use quotes in Markdown?</p>
                    </blockquote>
                    <p>Just prepend text with &gt;</p>
                </blockquote>
            </td>
        </tr>
        <tr>
            <td>
                ``` python<br>
                s = "Tripple backticks ( ``` ) generate code block"<br>
                print(s)<br>
                ```<br><br>
                <span class="text-muted">For the list of supported languages see <a href="/langs">the langs page</a>.</span>
            </td>
            <td>
                <table class="highlighttable mt-0">
                    <tbody>
                        <tr>
                            <td class="linenos border-0 p-0">
                                <div class="linenodiv">
                                    <pre><a href="#L-1-1">1</a><br><a href="#L-1-2">2</a></pre>
                                </div>
                            </td>
                            <td class="code border-0 p-0">
                                <div class="highlight">
                                    <pre><span id="L-1-1"><a name="L-1-1"></a><span class="n">s</span> <span class="o">=</span><span class="s2">"Tripple backticks ( ``` ) generate code block"</span></span><br><span id="L-1-2"><a name="L-1-2"></a><span class="k">print</span><span class="p">(</span><span class="n">s</span><span class="p">)</span></span></pre>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                Single backtick generates `inline code`
            </td>
            <td>
                Single backtick generates <code>inline code</code>
            </td>
        </tr>
        <tr>
            <td>
                ***<br><br>
                <span class="text-muted">Horizontal rule, &lt;hr&gt;</span>
            </td>
            <td>
                <hr>
            </td>
        </tr>
        <tr>
            <td>
                \*not italics\*<br><br>
                <span class="text-muted">To produce a literal asterisk or any symbol used in Markdown, use backslash to escape it.</span>
            </td>
            <td>
                *not italics*
            </td>
        </tr>
        <tr>
            <td>
                <pre class='p-0 text-reset' style="line-height: 1.5; font-size: 16px">
Header | Header
------ | ------
Cell   | Cell
Cell   | Cell</pre>
                <br><span class="text-muted">Columns can be aligned to the right with <code>--:</code> and centered with <code>:--:</code>.</span><br><br>
                <pre class='p-0 text-reset' style="line-height: 1.5; font-size: 16px">
Center | Right
:----: | ----:
Cell   | Cell
Cell   | Cell</pre>
            </td>
            <td>
                <table class="ntable">
                    <thead>
                        <tr>
                            <th>Header</th>
                            <th>Header</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Cell</td>
                            <td>Cell</td>
                        </tr>
                        <tr>
                            <td>Cell</td>
                            <td>Cell</td>
                        </tr>
                    </tbody>
                </table>
                <br><br>
                <table class="ntable">
                    <thead>
                        <tr>
                            <th style="text-align: center">Center</th>
                            <th style="text-align: right">Right</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td style="text-align: center">Cell</td>
                            <td style="text-align: right">Cell</td>
                        </tr>
                        <tr>
                            <td style="text-align: center">Cell</td>
                            <td style="text-align: right">Cell</td>
                        </tr>
                    </tbody>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <pre class="text-reset p-0" style="line-height: 1.5; font-size: 16px; font-family: inherit; white-space: pre-wrap;">
!!! note Admonition title
    Admonition text</pre>
                <br>
                <span class="text-muted">Available types: <span class="text-primary">info</span>, <span class="text-success">note</span>, <span class="text-warning">warning</span>, <span class="text-danger">danger</span>.
                    Defaults to warning.<br><br>
                </span>
                <pre class="text-reset p-0" style="line-height: 1.5; font-size: 16px; font-family: inherit; white-space: pre-wrap;">
!!! info
    Title or text can be skipped
</pre>
            </td>
            <td>
                <div class="admonition note">
                    <p class="admonition-title">Admonition title</p>
                    <p>Admonition text</p>
                </div>
                <div class="admonition info">
                    <p>Title or text can be skipped</p>
                </div>
            </td>
        </tr>
        <tr>
            <td>
                Autolinks:<br>
                https://rentry.co/ or rentry.co
            </td>
            <td>
                Autolinks:<br>
                <a href="https://rentry.co/">https://rentry.co/</a> or <a href="http://rentry.co/">rentry.co</a><br>
            </td>
        </tr>
        <tr>
            <td>
                Link description:<br>
                [Markdown paste service](https://rentry.co)<br><br>
                <span class="text-muted">Be sure to include the "http(s)://" part of the link.</span>
            </td>
            <td>
                Link description:<br>
                <a href="https://rentry.co">Markdown paste service</a><br>
            </td>
        </tr>
        <tr>
            <td>
                ![Alt Tag](https://i.imgur.com/PYV4crq.png)<br><br>
                ![Alt Tag](https://i.imgur.com/PYV4crq.png){100px:100px}<br><br>
                ![Alt Tag](https://i.imgur.com/PYV4crq.png "Title")<br><br>
                <span class="text-muted">Be sure to include direct link to the image.</span><br>
                <span class="text-muted">Alt tag shows if image fails to load.</span><br>
                <span class="text-muted">Title tag controls mouseover text separely from Alt.</span><br>
                <span class="text-muted">Image sizes can be given with the following units:</span>
                <ul>
                    <li>px : 0 - 4000</li>
                    <li>% : 0 - 500 (note: percentage height often does not do anything)</li>
                    <li>vw : 0 - 500 (percentage of the vertical size of the page)</li>
                    <li>hw : 0 - 500 (percentage of the horizontal size of the page)</li>
                    <li>no units: numbers used as pixels</li>
                </ul>
                <span class="text-muted">Note that this will only change the visual size of the image. A 4MB image at 50x50px will still slow down the page!</span><br><br>
                Images can be links by wrapping them:<br>
                [![Alt Tag](https://i.imgur.com/PYV4crq.png)](https://rentry.co)
                    
                
            </td>
            <td>
                <img alt="Alt Tag" title="Alt Tag" src="/static/raccoon.webp?v=2"><br><br>
                <img alt="Alt Tag" title="Alt Tag" src="/static/raccoon.webp?v=2" width="100px" height="100px"><br><br>
                <img alt="Alt Tag" title="Title" src="/static/raccoon.webp?v=2" width="100px" height="100px"><br><br>
                <a href="https://rentry.co"><img alt="Alt Tag" title="Title" src="/static/raccoon.webp?v=2" width="100px" height="100px"></a>
            </td>
        </tr>
    </tbody>
</table>

                </div>
            </div>

        </div>
    </div>
</div>

        <fieldset>
            <div class="text-danger messages float-right"></div>
            <div class=" text-danger  messages float-right"></div>
        </fieldset>
        <fieldset>
            <div class="code-url row float-right no-gutters">
                <div class="col-6 no-gutters">
                    <div class="mr-1">
                        <input autocapitalize="none" type="text" class="w-100 form-control squared float-left mb-2 " name="edit_code" id="id_edit_code" placeholder="Custom edit code" aria-label="Custom edit code" maxlength="100" value="">
                    </div>
                </div>
                <div class="col-6 no-gutters">
                    <div class="ml-1">
                        <input autocapitalize="none" type="text" class="w-100 form-control squared float-right ml-2 mb-2 " name="url" id="id_url" placeholder="Custom url" aria-label="Custom url" maxlength="100" value="">
                    </div>
                </div>
            </div>
            <button type="submit" id="submitButton" class="btn btn-light squared mr-2 mb-2 float-left" style="min-width: 2.8rem">Go</button>
        </fieldset>
        <div class="text-center w-100 mb-3">
            <hr class="my-2 basement-hr">
            <a class="mr-1" href="/">new</a>&middot;<a class="mx-1" href="/what">what</a>&middot;<a class="mx-1" href="/how">how</a>&middot;<a class="mx-1" href="/langs">langs</a>&middot;<a class="ml-1" href="/what#contacts">contacts</a>
<div class="position-relative"><span style="right: 0; bottom: -9px; background:transparent!important" class="position-absolute btn squared mr-2 mr-sm-0" id="darkModeBtn" title="Dark/light mode"></span></div>

            <h1 style="font-size: 11px" class="mb-0 mt-2 p-0 text-muted no-pointer font-weight-normal">Rentry.co - Markdown Paste Service</h1>
        </div>
    </form>
</div>

            
            
        </div>
    </div>

    <script src="/static/js/jquery.min.js?v=21"></script>
    <script src="/static/js/bootstrap.min.js?v=21"></script>
    
<script src="/static/markdownx/markdownx.min.js?v=20"></script>
<script src="/static/codemirror/lib/codemirror.min.js?v=20"></script>
<script src="/static/codemirror/addon/mode/overlay.min.js?v=20"></script>
<script src="/static/codemirror/mode/markdown/markdown.min.js?v=20"></script>
<script src="/static/codemirror/mode/gfm/gfm.min.js?v=20"></script>
<script src="/static/js/custom.min.js?v=20"></script>

</body>

</html>