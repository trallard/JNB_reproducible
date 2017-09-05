<section class='dark-diagonal'>

<h1> Notebooks and version control systems - natural bedfellows?</h1>

</section>



## I love Jupyter notebooks and Version control!

<div class='float_modal fragment'>
<p class='modal_p'> <i class="fa fa-github"></i> Let's play a game... </p>
</div>

<img src='resources/wally.jpg' style="width: 30%" />



We have this Jupyter notebook in our workshop repo...

<img src='resources/bad1.png'/>



<img src='resources/bad2.png' style='width: 35%'/>

<small> The original can be found at [https://goo.gl/tbfNpi](https://goo.gl/tbfNpi) </small>



We already have a Jupyter server running in our container so let's use this to have a look at the notebook we will be using:
`RNA-sequencing.ipynb`



One of our collaborators has made some changes...
- Can you tell what those changes are?
- How readable are these changes?

---

Head to [https://goo.gl/4RUcB7](https://goo.gl/4RUcB7)
---

<i class="fa fa-clock-o" aria-hidden="true"></i> You have 5 minutes

<p class="fragment fade-up">
Write your findings in our etherpad:
<br>
[https://goo.gl/JsmJQS](https://goo.gl/JsmJQS)
</p>



<section class='two-colors'>

<h2><display-text> That did not go very well </display-text></h2>
<div class='items-block'>
  <div class="single-block single1">

  <h3 class='dark'> <i class="fa fa-github" aria-hidden="true"></i></h3>
  <br>
  Jupyter notebooks are saved in the form of plain text JSON format...

 <div class='fragment'>
  <div class='float_modal fragment fade-out' style='top: 78%; left:20%'>
    <img class='modal_img ' src='resources/json_lol.png' />
  </div>
</div>
  </div>

  <div class="single-block single2">
  But our traditional  line-based diff and merge tools fail to 'understand' their structure.
  <br>
  So we end with something like this...
  </div>
  </div>

  <img class='fragment fade-in' src='resources/json_nb.png'  style='width: 50%' />
</section>



<section data-background-image="resources/diff_example.png">
<h1><accent-text> Not human readable!</accent-text></h1><!-- .element: class="fragment" -->
</section>
