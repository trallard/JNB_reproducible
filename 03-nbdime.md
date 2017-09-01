<section class='dark-diagonal'>

<h2> Fear not! <accent-text> nbdime</accent-text> can help</h2>

<h3> nbdime: Notebooks diffing and merging tool </h3>
<a href='http://opendreamkit.org' target='_blank'>
<img src="resources/odk-logo.svg" style='width:25%'/></a>
<br>
[Nbdime documentation](https://nbdime.readthedocs.io/en/latest/#)
</section>



## Getting nbdime
Normally you'd add it via pip :
```
$ pip install nbdime
```
( <strong> we've done this for you already </strong>)

You get:
- Command line diffing and merging tools
- Web client based tools (offline use)
- Integration with git



## Now let's play with this
<i class="fa fa-code-fork" aria-hidden="true"></i> As part of your Docker container
you should have a fork of this repo in your `jupyter` directory.

<p class= "fragment grow"> [https://github.com/trallard/JNB_reproducible](https://github.com/trallard/JNB_reproducible)
</p>



We need to ensure we are on the <accent-text>master</accent-text> branch.
```bash
$ git checkout master
```



## Getting started
The most basic example...
Diffing two notebooks:
```bash
$ nbdiff -som diff_ex/RNA-sequencing.ipynb diff_ex/RNA-sequencing2.ipynb
```
You can specify the parts to be compared:
- `--sources` / `-s`
- `--outputs`/ `-o`
- `--metadata` / `-m`
- `--attachments` / `-a`



## Much better
<img src="resources/nbdiff1.png" style='width:65%'/>



<img src="resources/nbdiff.png" style='width:70%'/>



<img src="resources/nbdiff-terminal.png" style='width:65%'/>



## Diffing on the web-app
Like in the previous example, we can compare the two notebooks...
and display <strong> rich rendered diffs </strong> on our web browser.

```bash
$ nbdiff-web -so diff_ex/RNA-sequencing.ipynb diff_ex/RNA-sequencing2.ipynb
```



<img src="resources/diff_web1.PNG" style='width:100%'/>

<div class='float_modal fragment fade-in'>
<p class='modal_p'> Note that in this case <br/>
'red': base and 'green': remote </p>
</div>



<img src="resources/diff_web2.PNG" style='width:100%'/>

<img src="resources/diff_web3.PNG" style='width:100%'/>



<img src="resources/diff_web4.PNG" style='width:100%'/>



## Are you forgetting about version control?
<img src="resources/version-control.jpg">
<br>
<small> Taken from http://geek-and-poke.com/ </smal>


## NBDIME version control integration
(Note: only git is supported at the moment)
- As <strong> drivers </strong> for your diff and merge operations (nbdime takes over these)
- Defining nbdime as diff and merge <strong> tools </tools>



## Integrate with <i class="fa fa-git-square" aria-hidden="true"></i>
Configuring all diff/merge drivers and tools:
```
$ nbdime config-git --enable --global
```

Note this allows for other configurations:
- for the current repository
- for this user (global)
- at system level



### Diffing two commits on the command line
```bash
$ git diff de2863c 404e4e0
```
![](resources/git_diff1.png)



## Using your web browser
```
$ nbdiff-web de2863c 404e4e0
```



<img src="resources/diff_webgit1.png" style='width:75%'/>



<img src="resources/diff_webgit1.png" style='width:75%'/>
