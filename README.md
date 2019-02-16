# Executive Summary
Neurodegenerative diseases can be very devastating. However, not much is known about the disease mechanisms, and there is a dearth of effective treatments. A relatively new neurodegenerative disease, chronic traumatic encephalopathy (CTE), has recently been linked to both football and Alzheimer’s disease (AD).[1] Playing football is a risk factor for both CTE and AD due to the repetitive head trauma that is characteristic of the sport.[2] CTE and AD share a controversial relationship, but some evidence indicates that CTE may promote the development of AD. Post-mortem biopsies of both AD  and CTE patients share some key pathological features, such as the overexpression of hyperphosphorylated tau protein.[3] Tau protein has not been proven to cause either disease, but additional shared pathological features that may be important in identifying a relationship. 
Significance. Determining the shared features of CTE and AD  is important for a number of reasons. First, identifying shared features, such as gene expression patterns, may be useful for defining mechanisms and pathological effects. The determination of disease mechanism would yield new drug targets--and currently there are no effective treatments for either AD or CTE.[1,4] Second, identifying disparate features in those same expression patterns could help distinguish between the two diseases. Currently, clinical presentation of the two diseases is very similar, and only medical history helps decide which is the more likely cause. As treatments improve, it is imperative to have an accurate diagnosis so the chosen treatment is as effective as it can be. 
# Specific aims
In order to further understand the relationship between CTE and AD, we propose analyzing and comparing two sets of gene expression microarray data. One profiles a time course of traumatic brain injury, the other explores a time course of cognitive decline similar to AD.[5,6] Specific aims include: 
- Determine significant differences in gene expression between conditions in each model 
- Quantify the similarity between significant gene expression data in these two models by using pathway analyses 

# Background
## Alzheimer’s disease
AD is the most common cause of dementia in the U.S. and is the 6th greatest cause of death in the U.S.[7] The disease is characterized by the accumulation of amyloid proteins as well as tau tangles in neurons. Amyloid beta oligomers (ABOs) are widely believed to be the primary cause of AD. AD is instigated by a large accumulation of ABOs which then start to selectively bind to neurons.[8] Once bound, ABOs initiate a host of cellular signal cascades that lead to neuron cell death. The microtubule binding protein known as tau, becomes abnormally phosphorylated in AD, which causes it to form aggregates within neuron cells. Tau tangles, as these aggregates are called, are believed to be a main cause of cell death and are correlated with ABO binding to neuron cells.[9] As AD progresses, more neurons progressively die, leading to dementia and death.
## CTE. 
CTE is a neurodegenerative disorder associated with repetitive traumatic brain injury.[1] The symptoms are similar to those of other neurodegenerative diseases, and include impairment of memory, motor function, decision making, and behavioral changes, but may also include mental health changes, including suicide.[1,4] While the pathology of CTE is still unknown, it is thought to be caused by repetitive head trauma, and is associated with athletes that play contact sports such as football or boxing.[4] There is currently no treatment or diagnostic for CTE, and prevention efforts are focused on preventing concussion by wearing helmets. Post-mortem biopsies have revealed that CTE is associated with reduced gray matter in the frontal and temporal lobes, as well as an anti-tau immune response, including neurofibrillary tangles, neuropil threads, dot-like grains, and astrocytic tangles.[1] 
# Sources and methods 
We will leverage two sets of microarray data, hippocampal gene expression changes across different brain injury models (fluid percussion vs controlled cortical) in rats,[6] and hippocampal gene/protein expression and cognitive function in rats across the adult lifespan.[5] The rat brain injury data set is produced from Affymetrix Rat Genome U34 Array, and the rat lifespan dataset is produced from Affymetrix Rat Expression 230A Array. The difference in technology could present us with some confounding technical problems and we are investigating whether this will be an issue or not. Other than the differences between the Affymetrix microarray chips we don't see any problems with inter-array variability since both sets of data use in situ oligonucleotide microarrays technology.
Our goal is to quantify the similarity between the molecular mechanisms that underlying brain damage after traumatic injury to the mechanisms that underlie cognitive decline during the natural process of aging. To this end, we will perform a pathway analyses, also called a gene-set analysis (GSA), to identify sets of genes that are jointly associated, with the aim of gaining a comprehensive representation of the state of the brain cell throughout its response to brain trauma and the aging process. There are multiple analytical methods available to accomplish this goal, but we are currently undetermined about our method of analysis. As observed from network-based studies,[11,12,13] brain gene expression is organized into modules of distinct functional categories, and so we are considering gene co-expression network analysis similar to Zhang and Horvath (2005).[13] We are also considering more advanced techniques such as using artificial neural networks, and in particular we are interested in the co-expression and network method developed by Narayanan et al (2004).[14] Finally, we are considering the classical cluster analysis method first introduced by Eisen et al (1998).[3]
# Conclusion
Since rat gene sequences have a more complete functional annotation than human gene sequences, we are at an advantage in terms of giving functional meaning to our findings. We aim to expand our analysis with the addition of the expected uncharacterized genes, with the goal of making at least provisional attribution of function on a genomic scale. By relating mechanisms of age-related cognitive decline and traumatic brain, we may be able to separate detrimental from compensatory effects in gene expression aging changes, and also link key early events in cognitive dysfunction. Furthermore, we may be able to generate unique insights and testable hypotheses on the underlying processes that drive neurodegeneration.
# References 
1. Armstrong, R. A., McKee, A. C., Stein, T. D., Alvarez, V. E., & Cairns, N. J. (2018). Cortical degeneration in chronic traumatic encephalopathy and Alzheimer’s disease neuropathologic change. Neurological Sciences, 1–5. https://doi.org/10.1007/s10072-018-3686-6

2. Lehman, E. J., Hein, M. J., Baron, S. L., & Gersic, C. M. (2012). Neurodegenerative causes of death among retired National Football League players. Neurology, 79(19), 1970–4. https://doi.org/10.1212/WNL.0b013e31826daf50

3. Woerman, A. L., Aoyagi, A., Patel, S., Kazmi, S. A., Lobach, I., Grinberg, L. T., … Prusiner, S. B. (2016). Tau prions from Alzheimer’s disease and chronic traumatic encephalopathy patients propagate in cultured cells. Proceedings of the National Academy of Sciences of the United States of America, 113(50), E8187–E8196. https://doi.org/10.1073/pnas.1616344113

4. (2016). Chronic traumatic encephalopathy - Symptoms and causes - Mayo Clinic. Retrieved February 13, 2019, from https://www.mayoclinic.org/diseases-conditions/chronic-traumatic-encephalopathy/symptoms-causes/syc-20370921

5. Kadish, I., Thibault, O., Blalock, E. M., Chen, K.-C., Gant, J. C., Porter, N. M., & Landfield, P. W. (2009). Hippocampal and Cognitive Aging across the Lifespan: A Bioenergetic Shift Precedes and Increased Cholesterol Trafficking Parallels Memory Impairment. Journal of Neuroscience, 29(6), 1805–1816. https://doi.org/10.1523/JNEUROSCI.4599-08.2009

6. Natale, J. E., Ahmed, F., Cernak, I., Stoica, B., & Faden, A. I. (2003). Gene Expression Profile Changes Are Commonly Modulated across Models and Species after Traumatic Brain Injury. Journal of Neurotrauma, 20(10), 907–927. https://doi.org/10.1089/089771503770195777

7. A. (2017, March 15). 2017 Alzheimer's disease facts and figures. Alzheimer's & Dementia, 13(4), 325-373. Retrieved from ScienceDirect.

8. Cline, E. N., Bicca, M. A., Viola, K. L., & Klein, W. L. (2018). The Amyloid-β Oligomer Hypothesis: Beginning of the Third Decade. Journal of Alzheimers Disease,64(S1). doi:10.3233/jad-179941

9. Johnson, G. V. (2004). Tau phosphorylation in neuronal cell function and dysfunction. Journal of Cell Science, 117(24), 5721-5729. doi:10.1242/jcs.01558

10. Eisen, M. B., Spellman, P. T., Brown, P. O., & Botstein, D. (1998). Cluster analysis and display of genome-wide expression patterns. Proceedings of the National Academy of Sciences, 95(25).

11. Chen, Y., Zhu, J., Lum, P. Y., Yang, X., Pinto, S., MacNeil, D. J., … Schadt, E. E. (2008). Variations in DNA elucidate molecular networks that cause disease. Nature, 452(7186), 429–435. https://doi.org/10.1038/nature06757

12. Emilsson, V., Thorleifsson, G., Zhang, B., Leonardson, A. S., Zink, F., Zhu, J., … Stefansson, K. (2008). Genetics of gene expression and its effect on disease. Nature, 452(7186), 423–428. https://doi.org/10.1038/nature06758

13. Zhang, B., & Horvath, S. (2005). A general framework for weighted gene co-expression network analysis. Statistical Applications in Genetics and Molecular Biology, 4, Article17. https://doi.org/10.2202/1544-6115.1128

14. Narayanan, A., Keedwell, E. C., Gamalielsson, J., & Tatineni, S. (2004). Single-layer artificial neural networks for gene expression analysis. Neurocomputing, 61, 217–240. https://doi.org/10.1016/J.NEUCOM.2003.10.017


