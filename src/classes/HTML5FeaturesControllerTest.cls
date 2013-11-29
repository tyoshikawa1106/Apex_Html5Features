/**
 * HTML5の特徴を持つINPUTFields
 * © 2013 Force.com Developer
 * ----------------------------------------
 * @createdName      : Taiki,Yoshikawa
 * @lastModifiedName : Taiki,Yoshikawa
 * ----------------------------------------
 */
@isTest
private class HTML5FeaturesControllerTest {

    /**
     * コンストラクタ テスト
     */
    static testMethod void HTML5FeaturesControllerTest() {
        
        Test.startTest();
        
        // コンストラクタ
        HTML5FeaturesController cls = new HTML5FeaturesController(new ApexPages.StandardController(new Contact()));
        cls.getSourcesList();
        
        Test.stopTest();
    }
}