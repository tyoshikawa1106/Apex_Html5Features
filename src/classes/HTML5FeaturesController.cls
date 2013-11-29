/**
 * HTML5の特徴を持つINPUTFields
 * © 2013 Force.com Developer
 * ----------------------------------------
 * @createdName      : Taiki,Yoshikawa
 * @lastModifiedName : Taiki,Yoshikawa
 * ----------------------------------------
 */
public with sharing class HTML5FeaturesController {
    
    public String fText { get; set; }
    public Integer fNumber { get; set; }
    public Date fDate { get; set; }
    
    /**
     * コンストラクタ
     */
    public HTML5FeaturesController(ApexPages.StandardController controller) {
        System.debug('HTML5FeaturesController:START');
        
        System.debug('HTML5FeaturesController:END');
    }
    
    /**
     * ソースのリスト値取得
     * @param   : none
     * @return  : ソースのリスト値
     */
    public List<SelectOption> getSourcesList() {
        System.debug('getSourcesList:START');
        
        List<SelectOption> sources = new List<SelectOption>();
        Schema.DescribeFieldResult picklistSources = Contact.LeadSource.getDescribe();
        for (Schema.PicklistEntry source : picklistSources.getPicklistValues()) {
            sources.add(new SelectOption(source.getValue(),source.getValue()));
        }
        
        System.debug('getSourcesList:START');
        return sources;
    }
}