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
- Write tests for each unit <i class="fa fa-arrow-right" aria-hidden="true"></i> <strong>for notebooks use nbval </strong>
- Commit to your version control system early and often <i class="fa fa-arrow-right" aria-hidden="true"></i> <strong> for notebooks use nbdime </strong>
- Ensure your code is well commented and documented
- Think about the broader picture always e.g. who will maintain this code?, who is going to use it?



## Automation!
<img src='resources/automation.jpg'>



- From sourcing the data to generate results/digital outputs
- Code coverage ([https://codecov.io/](https://codecov.io/))
- <accent-text> Continuous integration (CI)!</accent-text>: this can run tests for you regularly and report back<!-- .element: class="fragment" -->

e.g. You can check the status of this repo here: <!-- .element: class="fragment" -->

[https://travis-ci.org/trallard/JNB_reproducible](https://travis-ci.org/trallard/JNB_reproducible) <!-- .element: class="fragment" -->
- CI helps to find <i class="fa fa-bug" aria-hidden="true"></i> faster and easier



## Very basic CI use
You should have a `.travis.yml` file. This tells Travis what steps to follow for your build plus some other nice stuff:

- language
- install
- before_script
- <strong> script </strong>
- after_script
- after_sucess
- branches



## Distribution
- Make your code findable
  - Open source
  - DOI
- Reproducible runtime environment (e.g. docker container, conda)
- Don't forget to license your content (
[  https://choosealicense.com/](https://choosealicense.com/))
<div class='float_modal fragment'>
  <p class='modal_p'> Remember: your digital objects are valuable assets </p>
</div>


<display-text> And this is only the very beginning... </display-text>
<display-text> Thank you all :)  </display-text>
