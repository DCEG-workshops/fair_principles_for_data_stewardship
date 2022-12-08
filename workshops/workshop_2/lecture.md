---
layout: page
permalink: workshops/workshop_2/lecture
menubar_toc: true
---

<script src="{{ site.baseurl }}/assets/js/vanilla-back-to-top.min.js"></script>
<script>addBackToTop()</script>

# Lecture slides

<iframe src="https://docs.google.com/presentation/d/e/2PACX-1vQ2m_PajbJCqTp5GnbMw7wYCZUf5ca8ez-sTgTMw5ylyRZEDL7f1uIZs3ltOHvw5mPtBWVIwED_Pyu1/embed" frameborder="0" width="960" height="569" allowfullscreen="true" mozallowfullscreen="true" webkitallowfullscreen="true"></iframe>

# Learning objectives

- Become conversant with the terms Findable, Accessible, Interoperable, and Reusable (FAIR).
- Review how Box helped us adhere to the FAIR principles.
- Learn how Git and GitHub can help us achieve FAIRness.
- Learn about resources within DCEG to review FAIR concepts, and discuss the challenges and opportunities in applying it to your bespoke research setting.

# Lecture notes

## Motivation

There are several motivations to make our research practices more FAIR—

- To make our research resources easy to share and be reused by our target audience (and our selves), with appropriate credits for our contributions.
- To make our research findings reproducible and replicable.
  - *Reproducibility* is the ability to use the same data and the same code that you used, to obtain the same findings that you did.
  - *Replicability* is the ability to use the same code that you used but on a different yet related dataset, to obtain findings that are similar to yours.
- To make it easier to collaborate with others.
- To comply with data sharing policies of funding agencies and scientific journals.

## FAIR principles

<div style="display: flex; justify-content: center">
  <img src="images/fair_principles.png" alt="Expansion and description of the acronym FAIR" width="75%"/>
</div>

In the following definitions, *users* can refer to both yourself and others who want to use or extend your work.

- **Findable**: users can locate your research resources (data, code, and the associated metadata) online.
   - This is best achieved when your resources are linked via URLs that are globally unique and persistent identifiers. 
   - Such a resource can then be found remotely on the internet from anywhere in the world.
- **Accessible**: your data and code can be securely accessed online by those users with appropriate permissions.
   - The word *governance* is perhaps more appropriate. Accessibility refers to your ability to govern your resources by controlling who can and who cannot access your resources.
   - You may want to govern each of your research resources differently. For example, you may want to share your code with everyone, but your data may need to be restricted to only those with certain permissions.
- **Interoperable**: users can integrate your data with other data sources and users can run your code on any compute system.
   - Interoperability is achieved by adhering to open standards. 
   - You can use open standard (non-proprietary) formats to describe your data, such as— CSV, JSON, XML, and RDF.
   - You can write code in open-source languages that are supported on a variety of compute systems, such as— R, Python, and JavaScript.
- **Reusable**: users with permission can reuse your resources to reproduce your results and/or replicate your findings.
   - Reusability is achieved by simply ensuring that your resources are Findable, Accessible, and Interoperable.

We shall now see how RStudio, Box, Git, and GitHub helps us adhere to these principles with ease.

## Box

[Box](https://www.box.com/) is a cloud-based file storage service and collaboration platform. It is a great tool to store and share your research data. 

[In the first workshop of the FAIR workshop series](https://dceg-workshops.github.io/fair_principles_for_data_stewardship/workshops/workshop_1), we showed how to incorporate Box within our RStudio work environment as shown in the diagram below. We remotely (from your computer to where Box is located on the internet) communicated with the Box service via [the R library `boxr`](https://cran.r-project.org/web/packages/boxr/vignettes/boxr.html).

<div style="display: flex; justify-content: center">
  <img src="images/box_api.png" alt="Diagram showing your computer communicating with Box via HTTP" width="35%"/>
</div>

The `boxr` library is built on top of the Box API. The Box API allows us to interact with Box programmatically. This means that we can write R scripts to upload our data on Box, retrieve it, modify it (while keeping track of all versions of the data), and/or selectively share it with others. We can also revoke access to our data from specific users at any time.

### How does Box help achieve FAIRness?

We achieved FAIRness by using Box to store and share our research data and by using the `boxr` library to interact with Box. Specifically, we achieved FAIRness as follows—

- **Findable**: Box assigns a unique and persistent URL to each data object, and all its versions, stored in Box. Those with permissions can use this URL to access the data object from anywhere in the world. In the first workshop, we were able to access a specific data object stored in Box using the unique URL associated with it from RStudio via `boxr`.

<div style="display: flex; justify-content: center">
  <img src="images/box_findable.png" alt="Box interface showing that it assigns a unique URL for each object stored there" width="90%"/>
</div>

- **Accessible**: Box allows directory owners to control who can access their data objects. We can share our data objects with specific users, a group of users, or the entire world. We can also revoke access to our data objects from specific users at any time. We can grant users granular permissions to our data objects. For example, we can grant some users the ability to view our data objects, but not to modify them. In the first workshop, we used `boxr` to access only those files from Box that each of us had permissions for.

<div style="display: flex; justify-content: center">
  <img src="images/box_accessible.png" alt="Box interface showing how to grant and revoke granular permissions to each data object stored there. " width="90%"/>
</div>

- **Interoperable**: the data objects we store in Box should be in open standard formats, such as— CSV, JSON, XML, and RDF. We must not store the data objects in proprietary formats, such as— Microsoft Excel, Microsoft Word, or Adobe PDF— which would require the users to have the necessary license and specialized tools to read these formats. This creates a hurdle in interoperability because the users do not have a straightforward way to combine your data objects with elements from other data.
- **Reusable**: by ensuring that our data objects are Findable, Accessible, and Interoperable using Box, we ensured that our data objects are Reusable. This is because the users can now easily locate, access, and integrate our data objects with other data objects. This allows them to reproduce our results and/or replicate our findings.

## Git & GitHub


### How does Git & GitHub help achieve FAIRness?




## Conclusion

<div style="display: flex; justify-content: center">
  <img src="images/closing_meme.png" alt="A meme based on the Disney movie Snow White about Box and GitHub users being the FAIRest ones of all" width="80%"/>
</div>

## Additional resources
1. [García-Closas, Montserrat, et al. "Moving towards FAIR practices in epidemiological research." arXiv preprint arXiv:2206.06159 (2022).](https://arxiv.org/abs/2206.06159)
2. [YouTube series introducing Git and GitHub to absolute beginners](https://www.youtube.com/playlist?list=PLRqwX-V7Uu6ZF9C0YMKuns9sLDzK6zoiV).
3. [Git's official web book introducing Git and GitHub](https://git-scm.com/book/en/v2)
4. [GitHub's official guide to using Git and GitHub](https://docs.github.com/en/get-started/quickstart/set-up-git).
5. [GitHub's official guide to using GitHub Desktop](https://docs.github.com/en/desktop/installing-and-configuring-github-desktop/installing-and-authenticating-to-github-desktop).
6. [A web book introducing Git and GitHub to RStudio users](https://happygitwithr.com/).





