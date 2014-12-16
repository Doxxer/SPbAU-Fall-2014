package ru.spbau.turaev.depgraph.parser.antlr.internal; 

import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.AbstractInternalAntlrParser;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.parser.antlr.AntlrDatatypeRuleToken;
import ru.spbau.turaev.depgraph.services.MyDslGrammarAccess;



import org.antlr.runtime.*;
import java.util.Stack;
import java.util.List;
import java.util.ArrayList;

@SuppressWarnings("all")
public class InternalMyDslParser extends AbstractInternalAntlrParser {
    public static final String[] tokenNames = new String[] {
        "<invalid>", "<EOR>", "<DOWN>", "<UP>", "RULE_ID", "RULE_INT", "RULE_STRING", "RULE_ML_COMMENT", "RULE_SL_COMMENT", "RULE_WS", "RULE_ANY_OTHER", "'person'", "';'", "'is in relationships with {'", "','", "'}'", "'is alone'"
    };
    public static final int RULE_ID=4;
    public static final int RULE_WS=9;
    public static final int RULE_STRING=6;
    public static final int RULE_ANY_OTHER=10;
    public static final int RULE_SL_COMMENT=8;
    public static final int T__15=15;
    public static final int T__16=16;
    public static final int RULE_INT=5;
    public static final int T__11=11;
    public static final int RULE_ML_COMMENT=7;
    public static final int T__12=12;
    public static final int T__13=13;
    public static final int T__14=14;
    public static final int EOF=-1;

    // delegates
    // delegators


        public InternalMyDslParser(TokenStream input) {
            this(input, new RecognizerSharedState());
        }
        public InternalMyDslParser(TokenStream input, RecognizerSharedState state) {
            super(input, state);
             
        }
        

    public String[] getTokenNames() { return InternalMyDslParser.tokenNames; }
    public String getGrammarFileName() { return "../ru.spbau.turaev.depgraph/src-gen/ru/spbau/turaev/depgraph/parser/antlr/internal/InternalMyDsl.g"; }



     	private MyDslGrammarAccess grammarAccess;
     	
        public InternalMyDslParser(TokenStream input, MyDslGrammarAccess grammarAccess) {
            this(input);
            this.grammarAccess = grammarAccess;
            registerRules(grammarAccess.getGrammar());
        }
        
        @Override
        protected String getFirstRuleName() {
        	return "Model";	
       	}
       	
       	@Override
       	protected MyDslGrammarAccess getGrammarAccess() {
       		return grammarAccess;
       	}



    // $ANTLR start "entryRuleModel"
    // ../ru.spbau.turaev.depgraph/src-gen/ru/spbau/turaev/depgraph/parser/antlr/internal/InternalMyDsl.g:67:1: entryRuleModel returns [EObject current=null] : iv_ruleModel= ruleModel EOF ;
    public final EObject entryRuleModel() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleModel = null;


        try {
            // ../ru.spbau.turaev.depgraph/src-gen/ru/spbau/turaev/depgraph/parser/antlr/internal/InternalMyDsl.g:68:2: (iv_ruleModel= ruleModel EOF )
            // ../ru.spbau.turaev.depgraph/src-gen/ru/spbau/turaev/depgraph/parser/antlr/internal/InternalMyDsl.g:69:2: iv_ruleModel= ruleModel EOF
            {
             newCompositeNode(grammarAccess.getModelRule()); 
            pushFollow(FOLLOW_ruleModel_in_entryRuleModel75);
            iv_ruleModel=ruleModel();

            state._fsp--;

             current =iv_ruleModel; 
            match(input,EOF,FOLLOW_EOF_in_entryRuleModel85); 

            }

        }
         
            catch (RecognitionException re) { 
                recover(input,re); 
                appendSkippedTokens();
            } 
        finally {
        }
        return current;
    }
    // $ANTLR end "entryRuleModel"


    // $ANTLR start "ruleModel"
    // ../ru.spbau.turaev.depgraph/src-gen/ru/spbau/turaev/depgraph/parser/antlr/internal/InternalMyDsl.g:76:1: ruleModel returns [EObject current=null] : ( (lv_persons_0_0= rulePerson ) )* ;
    public final EObject ruleModel() throws RecognitionException {
        EObject current = null;

        EObject lv_persons_0_0 = null;


         enterRule(); 
            
        try {
            // ../ru.spbau.turaev.depgraph/src-gen/ru/spbau/turaev/depgraph/parser/antlr/internal/InternalMyDsl.g:79:28: ( ( (lv_persons_0_0= rulePerson ) )* )
            // ../ru.spbau.turaev.depgraph/src-gen/ru/spbau/turaev/depgraph/parser/antlr/internal/InternalMyDsl.g:80:1: ( (lv_persons_0_0= rulePerson ) )*
            {
            // ../ru.spbau.turaev.depgraph/src-gen/ru/spbau/turaev/depgraph/parser/antlr/internal/InternalMyDsl.g:80:1: ( (lv_persons_0_0= rulePerson ) )*
            loop1:
            do {
                int alt1=2;
                int LA1_0 = input.LA(1);

                if ( (LA1_0==11) ) {
                    alt1=1;
                }


                switch (alt1) {
            	case 1 :
            	    // ../ru.spbau.turaev.depgraph/src-gen/ru/spbau/turaev/depgraph/parser/antlr/internal/InternalMyDsl.g:81:1: (lv_persons_0_0= rulePerson )
            	    {
            	    // ../ru.spbau.turaev.depgraph/src-gen/ru/spbau/turaev/depgraph/parser/antlr/internal/InternalMyDsl.g:81:1: (lv_persons_0_0= rulePerson )
            	    // ../ru.spbau.turaev.depgraph/src-gen/ru/spbau/turaev/depgraph/parser/antlr/internal/InternalMyDsl.g:82:3: lv_persons_0_0= rulePerson
            	    {
            	     
            	    	        newCompositeNode(grammarAccess.getModelAccess().getPersonsPersonParserRuleCall_0()); 
            	    	    
            	    pushFollow(FOLLOW_rulePerson_in_ruleModel130);
            	    lv_persons_0_0=rulePerson();

            	    state._fsp--;


            	    	        if (current==null) {
            	    	            current = createModelElementForParent(grammarAccess.getModelRule());
            	    	        }
            	           		add(
            	           			current, 
            	           			"persons",
            	            		lv_persons_0_0, 
            	            		"Person");
            	    	        afterParserOrEnumRuleCall();
            	    	    

            	    }


            	    }
            	    break;

            	default :
            	    break loop1;
                }
            } while (true);


            }

             leaveRule(); 
        }
         
            catch (RecognitionException re) { 
                recover(input,re); 
                appendSkippedTokens();
            } 
        finally {
        }
        return current;
    }
    // $ANTLR end "ruleModel"


    // $ANTLR start "entryRulePerson"
    // ../ru.spbau.turaev.depgraph/src-gen/ru/spbau/turaev/depgraph/parser/antlr/internal/InternalMyDsl.g:106:1: entryRulePerson returns [EObject current=null] : iv_rulePerson= rulePerson EOF ;
    public final EObject entryRulePerson() throws RecognitionException {
        EObject current = null;

        EObject iv_rulePerson = null;


        try {
            // ../ru.spbau.turaev.depgraph/src-gen/ru/spbau/turaev/depgraph/parser/antlr/internal/InternalMyDsl.g:107:2: (iv_rulePerson= rulePerson EOF )
            // ../ru.spbau.turaev.depgraph/src-gen/ru/spbau/turaev/depgraph/parser/antlr/internal/InternalMyDsl.g:108:2: iv_rulePerson= rulePerson EOF
            {
             newCompositeNode(grammarAccess.getPersonRule()); 
            pushFollow(FOLLOW_rulePerson_in_entryRulePerson166);
            iv_rulePerson=rulePerson();

            state._fsp--;

             current =iv_rulePerson; 
            match(input,EOF,FOLLOW_EOF_in_entryRulePerson176); 

            }

        }
         
            catch (RecognitionException re) { 
                recover(input,re); 
                appendSkippedTokens();
            } 
        finally {
        }
        return current;
    }
    // $ANTLR end "entryRulePerson"


    // $ANTLR start "rulePerson"
    // ../ru.spbau.turaev.depgraph/src-gen/ru/spbau/turaev/depgraph/parser/antlr/internal/InternalMyDsl.g:115:1: rulePerson returns [EObject current=null] : (otherlv_0= 'person' ( (lv_name_1_0= RULE_ID ) ) ( ( (lv_rels_2_1= ruleRelationshipDescription | lv_rels_2_2= ruleNoRelationships ) ) ) otherlv_3= ';' ) ;
    public final EObject rulePerson() throws RecognitionException {
        EObject current = null;

        Token otherlv_0=null;
        Token lv_name_1_0=null;
        Token otherlv_3=null;
        EObject lv_rels_2_1 = null;

        EObject lv_rels_2_2 = null;


         enterRule(); 
            
        try {
            // ../ru.spbau.turaev.depgraph/src-gen/ru/spbau/turaev/depgraph/parser/antlr/internal/InternalMyDsl.g:118:28: ( (otherlv_0= 'person' ( (lv_name_1_0= RULE_ID ) ) ( ( (lv_rels_2_1= ruleRelationshipDescription | lv_rels_2_2= ruleNoRelationships ) ) ) otherlv_3= ';' ) )
            // ../ru.spbau.turaev.depgraph/src-gen/ru/spbau/turaev/depgraph/parser/antlr/internal/InternalMyDsl.g:119:1: (otherlv_0= 'person' ( (lv_name_1_0= RULE_ID ) ) ( ( (lv_rels_2_1= ruleRelationshipDescription | lv_rels_2_2= ruleNoRelationships ) ) ) otherlv_3= ';' )
            {
            // ../ru.spbau.turaev.depgraph/src-gen/ru/spbau/turaev/depgraph/parser/antlr/internal/InternalMyDsl.g:119:1: (otherlv_0= 'person' ( (lv_name_1_0= RULE_ID ) ) ( ( (lv_rels_2_1= ruleRelationshipDescription | lv_rels_2_2= ruleNoRelationships ) ) ) otherlv_3= ';' )
            // ../ru.spbau.turaev.depgraph/src-gen/ru/spbau/turaev/depgraph/parser/antlr/internal/InternalMyDsl.g:119:3: otherlv_0= 'person' ( (lv_name_1_0= RULE_ID ) ) ( ( (lv_rels_2_1= ruleRelationshipDescription | lv_rels_2_2= ruleNoRelationships ) ) ) otherlv_3= ';'
            {
            otherlv_0=(Token)match(input,11,FOLLOW_11_in_rulePerson213); 

                	newLeafNode(otherlv_0, grammarAccess.getPersonAccess().getPersonKeyword_0());
                
            // ../ru.spbau.turaev.depgraph/src-gen/ru/spbau/turaev/depgraph/parser/antlr/internal/InternalMyDsl.g:123:1: ( (lv_name_1_0= RULE_ID ) )
            // ../ru.spbau.turaev.depgraph/src-gen/ru/spbau/turaev/depgraph/parser/antlr/internal/InternalMyDsl.g:124:1: (lv_name_1_0= RULE_ID )
            {
            // ../ru.spbau.turaev.depgraph/src-gen/ru/spbau/turaev/depgraph/parser/antlr/internal/InternalMyDsl.g:124:1: (lv_name_1_0= RULE_ID )
            // ../ru.spbau.turaev.depgraph/src-gen/ru/spbau/turaev/depgraph/parser/antlr/internal/InternalMyDsl.g:125:3: lv_name_1_0= RULE_ID
            {
            lv_name_1_0=(Token)match(input,RULE_ID,FOLLOW_RULE_ID_in_rulePerson230); 

            			newLeafNode(lv_name_1_0, grammarAccess.getPersonAccess().getNameIDTerminalRuleCall_1_0()); 
            		

            	        if (current==null) {
            	            current = createModelElement(grammarAccess.getPersonRule());
            	        }
                   		setWithLastConsumed(
                   			current, 
                   			"name",
                    		lv_name_1_0, 
                    		"ID");
            	    

            }


            }

            // ../ru.spbau.turaev.depgraph/src-gen/ru/spbau/turaev/depgraph/parser/antlr/internal/InternalMyDsl.g:141:2: ( ( (lv_rels_2_1= ruleRelationshipDescription | lv_rels_2_2= ruleNoRelationships ) ) )
            // ../ru.spbau.turaev.depgraph/src-gen/ru/spbau/turaev/depgraph/parser/antlr/internal/InternalMyDsl.g:142:1: ( (lv_rels_2_1= ruleRelationshipDescription | lv_rels_2_2= ruleNoRelationships ) )
            {
            // ../ru.spbau.turaev.depgraph/src-gen/ru/spbau/turaev/depgraph/parser/antlr/internal/InternalMyDsl.g:142:1: ( (lv_rels_2_1= ruleRelationshipDescription | lv_rels_2_2= ruleNoRelationships ) )
            // ../ru.spbau.turaev.depgraph/src-gen/ru/spbau/turaev/depgraph/parser/antlr/internal/InternalMyDsl.g:143:1: (lv_rels_2_1= ruleRelationshipDescription | lv_rels_2_2= ruleNoRelationships )
            {
            // ../ru.spbau.turaev.depgraph/src-gen/ru/spbau/turaev/depgraph/parser/antlr/internal/InternalMyDsl.g:143:1: (lv_rels_2_1= ruleRelationshipDescription | lv_rels_2_2= ruleNoRelationships )
            int alt2=2;
            int LA2_0 = input.LA(1);

            if ( (LA2_0==13) ) {
                alt2=1;
            }
            else if ( (LA2_0==16) ) {
                alt2=2;
            }
            else {
                NoViableAltException nvae =
                    new NoViableAltException("", 2, 0, input);

                throw nvae;
            }
            switch (alt2) {
                case 1 :
                    // ../ru.spbau.turaev.depgraph/src-gen/ru/spbau/turaev/depgraph/parser/antlr/internal/InternalMyDsl.g:144:3: lv_rels_2_1= ruleRelationshipDescription
                    {
                     
                    	        newCompositeNode(grammarAccess.getPersonAccess().getRelsRelationshipDescriptionParserRuleCall_2_0_0()); 
                    	    
                    pushFollow(FOLLOW_ruleRelationshipDescription_in_rulePerson258);
                    lv_rels_2_1=ruleRelationshipDescription();

                    state._fsp--;


                    	        if (current==null) {
                    	            current = createModelElementForParent(grammarAccess.getPersonRule());
                    	        }
                           		set(
                           			current, 
                           			"rels",
                            		lv_rels_2_1, 
                            		"RelationshipDescription");
                    	        afterParserOrEnumRuleCall();
                    	    

                    }
                    break;
                case 2 :
                    // ../ru.spbau.turaev.depgraph/src-gen/ru/spbau/turaev/depgraph/parser/antlr/internal/InternalMyDsl.g:159:8: lv_rels_2_2= ruleNoRelationships
                    {
                     
                    	        newCompositeNode(grammarAccess.getPersonAccess().getRelsNoRelationshipsParserRuleCall_2_0_1()); 
                    	    
                    pushFollow(FOLLOW_ruleNoRelationships_in_rulePerson277);
                    lv_rels_2_2=ruleNoRelationships();

                    state._fsp--;


                    	        if (current==null) {
                    	            current = createModelElementForParent(grammarAccess.getPersonRule());
                    	        }
                           		set(
                           			current, 
                           			"rels",
                            		lv_rels_2_2, 
                            		"NoRelationships");
                    	        afterParserOrEnumRuleCall();
                    	    

                    }
                    break;

            }


            }


            }

            otherlv_3=(Token)match(input,12,FOLLOW_12_in_rulePerson292); 

                	newLeafNode(otherlv_3, grammarAccess.getPersonAccess().getSemicolonKeyword_3());
                

            }


            }

             leaveRule(); 
        }
         
            catch (RecognitionException re) { 
                recover(input,re); 
                appendSkippedTokens();
            } 
        finally {
        }
        return current;
    }
    // $ANTLR end "rulePerson"


    // $ANTLR start "entryRuleRelationshipDescription"
    // ../ru.spbau.turaev.depgraph/src-gen/ru/spbau/turaev/depgraph/parser/antlr/internal/InternalMyDsl.g:189:1: entryRuleRelationshipDescription returns [EObject current=null] : iv_ruleRelationshipDescription= ruleRelationshipDescription EOF ;
    public final EObject entryRuleRelationshipDescription() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleRelationshipDescription = null;


        try {
            // ../ru.spbau.turaev.depgraph/src-gen/ru/spbau/turaev/depgraph/parser/antlr/internal/InternalMyDsl.g:190:2: (iv_ruleRelationshipDescription= ruleRelationshipDescription EOF )
            // ../ru.spbau.turaev.depgraph/src-gen/ru/spbau/turaev/depgraph/parser/antlr/internal/InternalMyDsl.g:191:2: iv_ruleRelationshipDescription= ruleRelationshipDescription EOF
            {
             newCompositeNode(grammarAccess.getRelationshipDescriptionRule()); 
            pushFollow(FOLLOW_ruleRelationshipDescription_in_entryRuleRelationshipDescription328);
            iv_ruleRelationshipDescription=ruleRelationshipDescription();

            state._fsp--;

             current =iv_ruleRelationshipDescription; 
            match(input,EOF,FOLLOW_EOF_in_entryRuleRelationshipDescription338); 

            }

        }
         
            catch (RecognitionException re) { 
                recover(input,re); 
                appendSkippedTokens();
            } 
        finally {
        }
        return current;
    }
    // $ANTLR end "entryRuleRelationshipDescription"


    // $ANTLR start "ruleRelationshipDescription"
    // ../ru.spbau.turaev.depgraph/src-gen/ru/spbau/turaev/depgraph/parser/antlr/internal/InternalMyDsl.g:198:1: ruleRelationshipDescription returns [EObject current=null] : (otherlv_0= 'is in relationships with {' ( (otherlv_1= RULE_ID ) ) (otherlv_2= ',' ( (otherlv_3= RULE_ID ) ) )* otherlv_4= '}' ) ;
    public final EObject ruleRelationshipDescription() throws RecognitionException {
        EObject current = null;

        Token otherlv_0=null;
        Token otherlv_1=null;
        Token otherlv_2=null;
        Token otherlv_3=null;
        Token otherlv_4=null;

         enterRule(); 
            
        try {
            // ../ru.spbau.turaev.depgraph/src-gen/ru/spbau/turaev/depgraph/parser/antlr/internal/InternalMyDsl.g:201:28: ( (otherlv_0= 'is in relationships with {' ( (otherlv_1= RULE_ID ) ) (otherlv_2= ',' ( (otherlv_3= RULE_ID ) ) )* otherlv_4= '}' ) )
            // ../ru.spbau.turaev.depgraph/src-gen/ru/spbau/turaev/depgraph/parser/antlr/internal/InternalMyDsl.g:202:1: (otherlv_0= 'is in relationships with {' ( (otherlv_1= RULE_ID ) ) (otherlv_2= ',' ( (otherlv_3= RULE_ID ) ) )* otherlv_4= '}' )
            {
            // ../ru.spbau.turaev.depgraph/src-gen/ru/spbau/turaev/depgraph/parser/antlr/internal/InternalMyDsl.g:202:1: (otherlv_0= 'is in relationships with {' ( (otherlv_1= RULE_ID ) ) (otherlv_2= ',' ( (otherlv_3= RULE_ID ) ) )* otherlv_4= '}' )
            // ../ru.spbau.turaev.depgraph/src-gen/ru/spbau/turaev/depgraph/parser/antlr/internal/InternalMyDsl.g:202:3: otherlv_0= 'is in relationships with {' ( (otherlv_1= RULE_ID ) ) (otherlv_2= ',' ( (otherlv_3= RULE_ID ) ) )* otherlv_4= '}'
            {
            otherlv_0=(Token)match(input,13,FOLLOW_13_in_ruleRelationshipDescription375); 

                	newLeafNode(otherlv_0, grammarAccess.getRelationshipDescriptionAccess().getIsInRelationshipsWithKeyword_0());
                
            // ../ru.spbau.turaev.depgraph/src-gen/ru/spbau/turaev/depgraph/parser/antlr/internal/InternalMyDsl.g:206:1: ( (otherlv_1= RULE_ID ) )
            // ../ru.spbau.turaev.depgraph/src-gen/ru/spbau/turaev/depgraph/parser/antlr/internal/InternalMyDsl.g:207:1: (otherlv_1= RULE_ID )
            {
            // ../ru.spbau.turaev.depgraph/src-gen/ru/spbau/turaev/depgraph/parser/antlr/internal/InternalMyDsl.g:207:1: (otherlv_1= RULE_ID )
            // ../ru.spbau.turaev.depgraph/src-gen/ru/spbau/turaev/depgraph/parser/antlr/internal/InternalMyDsl.g:208:3: otherlv_1= RULE_ID
            {

            			if (current==null) {
            	            current = createModelElement(grammarAccess.getRelationshipDescriptionRule());
            	        }
                    
            otherlv_1=(Token)match(input,RULE_ID,FOLLOW_RULE_ID_in_ruleRelationshipDescription395); 

            		newLeafNode(otherlv_1, grammarAccess.getRelationshipDescriptionAccess().getRelPersonCrossReference_1_0()); 
            	

            }


            }

            // ../ru.spbau.turaev.depgraph/src-gen/ru/spbau/turaev/depgraph/parser/antlr/internal/InternalMyDsl.g:219:2: (otherlv_2= ',' ( (otherlv_3= RULE_ID ) ) )*
            loop3:
            do {
                int alt3=2;
                int LA3_0 = input.LA(1);

                if ( (LA3_0==14) ) {
                    alt3=1;
                }


                switch (alt3) {
            	case 1 :
            	    // ../ru.spbau.turaev.depgraph/src-gen/ru/spbau/turaev/depgraph/parser/antlr/internal/InternalMyDsl.g:219:4: otherlv_2= ',' ( (otherlv_3= RULE_ID ) )
            	    {
            	    otherlv_2=(Token)match(input,14,FOLLOW_14_in_ruleRelationshipDescription408); 

            	        	newLeafNode(otherlv_2, grammarAccess.getRelationshipDescriptionAccess().getCommaKeyword_2_0());
            	        
            	    // ../ru.spbau.turaev.depgraph/src-gen/ru/spbau/turaev/depgraph/parser/antlr/internal/InternalMyDsl.g:223:1: ( (otherlv_3= RULE_ID ) )
            	    // ../ru.spbau.turaev.depgraph/src-gen/ru/spbau/turaev/depgraph/parser/antlr/internal/InternalMyDsl.g:224:1: (otherlv_3= RULE_ID )
            	    {
            	    // ../ru.spbau.turaev.depgraph/src-gen/ru/spbau/turaev/depgraph/parser/antlr/internal/InternalMyDsl.g:224:1: (otherlv_3= RULE_ID )
            	    // ../ru.spbau.turaev.depgraph/src-gen/ru/spbau/turaev/depgraph/parser/antlr/internal/InternalMyDsl.g:225:3: otherlv_3= RULE_ID
            	    {

            	    			if (current==null) {
            	    	            current = createModelElement(grammarAccess.getRelationshipDescriptionRule());
            	    	        }
            	            
            	    otherlv_3=(Token)match(input,RULE_ID,FOLLOW_RULE_ID_in_ruleRelationshipDescription428); 

            	    		newLeafNode(otherlv_3, grammarAccess.getRelationshipDescriptionAccess().getRelPersonCrossReference_2_1_0()); 
            	    	

            	    }


            	    }


            	    }
            	    break;

            	default :
            	    break loop3;
                }
            } while (true);

            otherlv_4=(Token)match(input,15,FOLLOW_15_in_ruleRelationshipDescription442); 

                	newLeafNode(otherlv_4, grammarAccess.getRelationshipDescriptionAccess().getRightCurlyBracketKeyword_3());
                

            }


            }

             leaveRule(); 
        }
         
            catch (RecognitionException re) { 
                recover(input,re); 
                appendSkippedTokens();
            } 
        finally {
        }
        return current;
    }
    // $ANTLR end "ruleRelationshipDescription"


    // $ANTLR start "entryRuleNoRelationships"
    // ../ru.spbau.turaev.depgraph/src-gen/ru/spbau/turaev/depgraph/parser/antlr/internal/InternalMyDsl.g:248:1: entryRuleNoRelationships returns [EObject current=null] : iv_ruleNoRelationships= ruleNoRelationships EOF ;
    public final EObject entryRuleNoRelationships() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleNoRelationships = null;


        try {
            // ../ru.spbau.turaev.depgraph/src-gen/ru/spbau/turaev/depgraph/parser/antlr/internal/InternalMyDsl.g:249:2: (iv_ruleNoRelationships= ruleNoRelationships EOF )
            // ../ru.spbau.turaev.depgraph/src-gen/ru/spbau/turaev/depgraph/parser/antlr/internal/InternalMyDsl.g:250:2: iv_ruleNoRelationships= ruleNoRelationships EOF
            {
             newCompositeNode(grammarAccess.getNoRelationshipsRule()); 
            pushFollow(FOLLOW_ruleNoRelationships_in_entryRuleNoRelationships478);
            iv_ruleNoRelationships=ruleNoRelationships();

            state._fsp--;

             current =iv_ruleNoRelationships; 
            match(input,EOF,FOLLOW_EOF_in_entryRuleNoRelationships488); 

            }

        }
         
            catch (RecognitionException re) { 
                recover(input,re); 
                appendSkippedTokens();
            } 
        finally {
        }
        return current;
    }
    // $ANTLR end "entryRuleNoRelationships"


    // $ANTLR start "ruleNoRelationships"
    // ../ru.spbau.turaev.depgraph/src-gen/ru/spbau/turaev/depgraph/parser/antlr/internal/InternalMyDsl.g:257:1: ruleNoRelationships returns [EObject current=null] : ( (lv_rel_0_0= 'is alone' ) ) ;
    public final EObject ruleNoRelationships() throws RecognitionException {
        EObject current = null;

        Token lv_rel_0_0=null;

         enterRule(); 
            
        try {
            // ../ru.spbau.turaev.depgraph/src-gen/ru/spbau/turaev/depgraph/parser/antlr/internal/InternalMyDsl.g:260:28: ( ( (lv_rel_0_0= 'is alone' ) ) )
            // ../ru.spbau.turaev.depgraph/src-gen/ru/spbau/turaev/depgraph/parser/antlr/internal/InternalMyDsl.g:261:1: ( (lv_rel_0_0= 'is alone' ) )
            {
            // ../ru.spbau.turaev.depgraph/src-gen/ru/spbau/turaev/depgraph/parser/antlr/internal/InternalMyDsl.g:261:1: ( (lv_rel_0_0= 'is alone' ) )
            // ../ru.spbau.turaev.depgraph/src-gen/ru/spbau/turaev/depgraph/parser/antlr/internal/InternalMyDsl.g:262:1: (lv_rel_0_0= 'is alone' )
            {
            // ../ru.spbau.turaev.depgraph/src-gen/ru/spbau/turaev/depgraph/parser/antlr/internal/InternalMyDsl.g:262:1: (lv_rel_0_0= 'is alone' )
            // ../ru.spbau.turaev.depgraph/src-gen/ru/spbau/turaev/depgraph/parser/antlr/internal/InternalMyDsl.g:263:3: lv_rel_0_0= 'is alone'
            {
            lv_rel_0_0=(Token)match(input,16,FOLLOW_16_in_ruleNoRelationships530); 

                    newLeafNode(lv_rel_0_0, grammarAccess.getNoRelationshipsAccess().getRelIsAloneKeyword_0());
                

            	        if (current==null) {
            	            current = createModelElement(grammarAccess.getNoRelationshipsRule());
            	        }
                   		setWithLastConsumed(current, "rel", lv_rel_0_0, "is alone");
            	    

            }


            }


            }

             leaveRule(); 
        }
         
            catch (RecognitionException re) { 
                recover(input,re); 
                appendSkippedTokens();
            } 
        finally {
        }
        return current;
    }
    // $ANTLR end "ruleNoRelationships"

    // Delegated rules


 

    public static final BitSet FOLLOW_ruleModel_in_entryRuleModel75 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleModel85 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rulePerson_in_ruleModel130 = new BitSet(new long[]{0x0000000000000802L});
    public static final BitSet FOLLOW_rulePerson_in_entryRulePerson166 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRulePerson176 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_11_in_rulePerson213 = new BitSet(new long[]{0x0000000000000010L});
    public static final BitSet FOLLOW_RULE_ID_in_rulePerson230 = new BitSet(new long[]{0x0000000000012000L});
    public static final BitSet FOLLOW_ruleRelationshipDescription_in_rulePerson258 = new BitSet(new long[]{0x0000000000001000L});
    public static final BitSet FOLLOW_ruleNoRelationships_in_rulePerson277 = new BitSet(new long[]{0x0000000000001000L});
    public static final BitSet FOLLOW_12_in_rulePerson292 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleRelationshipDescription_in_entryRuleRelationshipDescription328 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleRelationshipDescription338 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_13_in_ruleRelationshipDescription375 = new BitSet(new long[]{0x0000000000000010L});
    public static final BitSet FOLLOW_RULE_ID_in_ruleRelationshipDescription395 = new BitSet(new long[]{0x000000000000C000L});
    public static final BitSet FOLLOW_14_in_ruleRelationshipDescription408 = new BitSet(new long[]{0x0000000000000010L});
    public static final BitSet FOLLOW_RULE_ID_in_ruleRelationshipDescription428 = new BitSet(new long[]{0x000000000000C000L});
    public static final BitSet FOLLOW_15_in_ruleRelationshipDescription442 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleNoRelationships_in_entryRuleNoRelationships478 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleNoRelationships488 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_16_in_ruleNoRelationships530 = new BitSet(new long[]{0x0000000000000002L});

}