<section class='dark-diagonal'>

<h2> Putting it all together</h2>

</section>



## What other actions can I take to ensure reproducibility?
- Consider your data curation strategy from an early stage
- Think of code hygiene
- Adopt better practices early on and encourage collaborators to do the same (related to code hygiene)
- Automate as much as possible
- Treat your digital outputs as valuable assets
- Have you considered your licensing options?



## On data curation
- How does my data look like? What format is it in?
- How often will it be updated?
- Consider publishing datasets and getting an associated DOI (via Zenodo or FigShare)
- Metadata is king!



## Some thoughts on code hygiene
- Write tests for each unit <i class="fa fa-arrow-right" aria-hidden="true"></i> for notebooks use nbval
- Commit to your version control system early and often <i class="fa fa-arrow-right" aria-hidden="true"></i> for notebooks use nbdime
- Ensure your code is well commented and documented
- Think about the broader picture always e.g. who will maintain this code?, who is going to use it?



## Automation!
<img src='resources/automation.jpg'>






- Used <accent-text> Continuous integration!</accent-text>: this can run tests for you regularly and report back<!-- .element: class="fragment" -->
(You can check the status of this repo here: <!-- .element: class="fragment" -->)

[https://travis-ci.org/trallard/JNB_reproducible](https://travis-ci.org/trallard/JNB_reproducible) <!-- .element: class="fragment" -->



## Very basic CI use
You should have a `.travis.yml` file. This tells Travis what steps to follow for your build plus some other nice stuff:

- language
- install
- before_script
- <strong> script </strong>
- after_script
- after_sucess
- branches




<display-text> And this is only the very beginning... </display-text>
<display-text> Thank you all :)  </display-text>
