package ru.spbau.turaev.depgraph.ui.contentassist.antlr.internal; 

import java.io.InputStream;
import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.ui.editor.contentassist.antlr.internal.AbstractInternalContentAssistParser;
import org.eclipse.xtext.ui.editor.contentassist.antlr.internal.DFA;
import ru.spbau.turaev.depgraph.services.MyDslGrammarAccess;



import org.antlr.runtime.*;
import java.util.Stack;
import java.util.List;
import java.util.ArrayList;

@SuppressWarnings("all")
public class InternalMyDslParser extends AbstractInternalContentAssistParser {
    public static final String[] tokenNames = new String[] {
        "<invalid>", "<EOR>", "<DOWN>", "<UP>", "RULE_ID", "RULE_INT", "RULE_STRING", "RULE_ML_COMMENT", "RULE_SL_COMMENT", "RULE_WS", "RULE_ANY_OTHER", "'person'", "';'", "'is in relationships with {'", "'}'", "','", "'is alone'"
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
    public String getGrammarFileName() { return "../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g"; }


     
     	private MyDslGrammarAccess grammarAccess;
     	
        public void setGrammarAccess(MyDslGrammarAccess grammarAccess) {
        	this.grammarAccess = grammarAccess;
        }
        
        @Override
        protected Grammar getGrammar() {
        	return grammarAccess.getGrammar();
        }
        
        @Override
        protected String getValueForTokenName(String tokenName) {
        	return tokenName;
        }




    // $ANTLR start "entryRuleModel"
    // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:60:1: entryRuleModel : ruleModel EOF ;
    public final void entryRuleModel() throws RecognitionException {
        try {
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:61:1: ( ruleModel EOF )
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:62:1: ruleModel EOF
            {
             before(grammarAccess.getModelRule()); 
            pushFollow(FOLLOW_ruleModel_in_entryRuleModel61);
            ruleModel();

            state._fsp--;

             after(grammarAccess.getModelRule()); 
            match(input,EOF,FOLLOW_EOF_in_entryRuleModel68); 

            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {
        }
        return ;
    }
    // $ANTLR end "entryRuleModel"


    // $ANTLR start "ruleModel"
    // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:69:1: ruleModel : ( ( rule__Model__PersonsAssignment )* ) ;
    public final void ruleModel() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:73:2: ( ( ( rule__Model__PersonsAssignment )* ) )
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:74:1: ( ( rule__Model__PersonsAssignment )* )
            {
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:74:1: ( ( rule__Model__PersonsAssignment )* )
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:75:1: ( rule__Model__PersonsAssignment )*
            {
             before(grammarAccess.getModelAccess().getPersonsAssignment()); 
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:76:1: ( rule__Model__PersonsAssignment )*
            loop1:
            do {
                int alt1=2;
                int LA1_0 = input.LA(1);

                if ( (LA1_0==11) ) {
                    alt1=1;
                }


                switch (alt1) {
            	case 1 :
            	    // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:76:2: rule__Model__PersonsAssignment
            	    {
            	    pushFollow(FOLLOW_rule__Model__PersonsAssignment_in_ruleModel94);
            	    rule__Model__PersonsAssignment();

            	    state._fsp--;


            	    }
            	    break;

            	default :
            	    break loop1;
                }
            } while (true);

             after(grammarAccess.getModelAccess().getPersonsAssignment()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "ruleModel"


    // $ANTLR start "entryRulePerson"
    // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:88:1: entryRulePerson : rulePerson EOF ;
    public final void entryRulePerson() throws RecognitionException {
        try {
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:89:1: ( rulePerson EOF )
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:90:1: rulePerson EOF
            {
             before(grammarAccess.getPersonRule()); 
            pushFollow(FOLLOW_rulePerson_in_entryRulePerson122);
            rulePerson();

            state._fsp--;

             after(grammarAccess.getPersonRule()); 
            match(input,EOF,FOLLOW_EOF_in_entryRulePerson129); 

            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {
        }
        return ;
    }
    // $ANTLR end "entryRulePerson"


    // $ANTLR start "rulePerson"
    // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:97:1: rulePerson : ( ( rule__Person__Group__0 ) ) ;
    public final void rulePerson() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:101:2: ( ( ( rule__Person__Group__0 ) ) )
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:102:1: ( ( rule__Person__Group__0 ) )
            {
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:102:1: ( ( rule__Person__Group__0 ) )
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:103:1: ( rule__Person__Group__0 )
            {
             before(grammarAccess.getPersonAccess().getGroup()); 
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:104:1: ( rule__Person__Group__0 )
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:104:2: rule__Person__Group__0
            {
            pushFollow(FOLLOW_rule__Person__Group__0_in_rulePerson155);
            rule__Person__Group__0();

            state._fsp--;


            }

             after(grammarAccess.getPersonAccess().getGroup()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rulePerson"


    // $ANTLR start "entryRuleRelationshipDescription"
    // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:116:1: entryRuleRelationshipDescription : ruleRelationshipDescription EOF ;
    public final void entryRuleRelationshipDescription() throws RecognitionException {
        try {
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:117:1: ( ruleRelationshipDescription EOF )
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:118:1: ruleRelationshipDescription EOF
            {
             before(grammarAccess.getRelationshipDescriptionRule()); 
            pushFollow(FOLLOW_ruleRelationshipDescription_in_entryRuleRelationshipDescription182);
            ruleRelationshipDescription();

            state._fsp--;

             after(grammarAccess.getRelationshipDescriptionRule()); 
            match(input,EOF,FOLLOW_EOF_in_entryRuleRelationshipDescription189); 

            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {
        }
        return ;
    }
    // $ANTLR end "entryRuleRelationshipDescription"


    // $ANTLR start "ruleRelationshipDescription"
    // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:125:1: ruleRelationshipDescription : ( ( rule__RelationshipDescription__Group__0 ) ) ;
    public final void ruleRelationshipDescription() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:129:2: ( ( ( rule__RelationshipDescription__Group__0 ) ) )
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:130:1: ( ( rule__RelationshipDescription__Group__0 ) )
            {
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:130:1: ( ( rule__RelationshipDescription__Group__0 ) )
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:131:1: ( rule__RelationshipDescription__Group__0 )
            {
             before(grammarAccess.getRelationshipDescriptionAccess().getGroup()); 
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:132:1: ( rule__RelationshipDescription__Group__0 )
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:132:2: rule__RelationshipDescription__Group__0
            {
            pushFollow(FOLLOW_rule__RelationshipDescription__Group__0_in_ruleRelationshipDescription215);
            rule__RelationshipDescription__Group__0();

            state._fsp--;


            }

             after(grammarAccess.getRelationshipDescriptionAccess().getGroup()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "ruleRelationshipDescription"


    // $ANTLR start "entryRuleNoRelationships"
    // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:144:1: entryRuleNoRelationships : ruleNoRelationships EOF ;
    public final void entryRuleNoRelationships() throws RecognitionException {
        try {
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:145:1: ( ruleNoRelationships EOF )
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:146:1: ruleNoRelationships EOF
            {
             before(grammarAccess.getNoRelationshipsRule()); 
            pushFollow(FOLLOW_ruleNoRelationships_in_entryRuleNoRelationships242);
            ruleNoRelationships();

            state._fsp--;

             after(grammarAccess.getNoRelationshipsRule()); 
            match(input,EOF,FOLLOW_EOF_in_entryRuleNoRelationships249); 

            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {
        }
        return ;
    }
    // $ANTLR end "entryRuleNoRelationships"


    // $ANTLR start "ruleNoRelationships"
    // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:153:1: ruleNoRelationships : ( ( rule__NoRelationships__RelAssignment ) ) ;
    public final void ruleNoRelationships() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:157:2: ( ( ( rule__NoRelationships__RelAssignment ) ) )
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:158:1: ( ( rule__NoRelationships__RelAssignment ) )
            {
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:158:1: ( ( rule__NoRelationships__RelAssignment ) )
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:159:1: ( rule__NoRelationships__RelAssignment )
            {
             before(grammarAccess.getNoRelationshipsAccess().getRelAssignment()); 
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:160:1: ( rule__NoRelationships__RelAssignment )
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:160:2: rule__NoRelationships__RelAssignment
            {
            pushFollow(FOLLOW_rule__NoRelationships__RelAssignment_in_ruleNoRelationships275);
            rule__NoRelationships__RelAssignment();

            state._fsp--;


            }

             after(grammarAccess.getNoRelationshipsAccess().getRelAssignment()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "ruleNoRelationships"


    // $ANTLR start "rule__Person__RelsAlternatives_2_0"
    // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:172:1: rule__Person__RelsAlternatives_2_0 : ( ( ruleRelationshipDescription ) | ( ruleNoRelationships ) );
    public final void rule__Person__RelsAlternatives_2_0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:176:1: ( ( ruleRelationshipDescription ) | ( ruleNoRelationships ) )
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
                    // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:177:1: ( ruleRelationshipDescription )
                    {
                    // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:177:1: ( ruleRelationshipDescription )
                    // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:178:1: ruleRelationshipDescription
                    {
                     before(grammarAccess.getPersonAccess().getRelsRelationshipDescriptionParserRuleCall_2_0_0()); 
                    pushFollow(FOLLOW_ruleRelationshipDescription_in_rule__Person__RelsAlternatives_2_0311);
                    ruleRelationshipDescription();

                    state._fsp--;

                     after(grammarAccess.getPersonAccess().getRelsRelationshipDescriptionParserRuleCall_2_0_0()); 

                    }


                    }
                    break;
                case 2 :
                    // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:183:6: ( ruleNoRelationships )
                    {
                    // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:183:6: ( ruleNoRelationships )
                    // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:184:1: ruleNoRelationships
                    {
                     before(grammarAccess.getPersonAccess().getRelsNoRelationshipsParserRuleCall_2_0_1()); 
                    pushFollow(FOLLOW_ruleNoRelationships_in_rule__Person__RelsAlternatives_2_0328);
                    ruleNoRelationships();

                    state._fsp--;

                     after(grammarAccess.getPersonAccess().getRelsNoRelationshipsParserRuleCall_2_0_1()); 

                    }


                    }
                    break;

            }
        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Person__RelsAlternatives_2_0"


    // $ANTLR start "rule__Person__Group__0"
    // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:196:1: rule__Person__Group__0 : rule__Person__Group__0__Impl rule__Person__Group__1 ;
    public final void rule__Person__Group__0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:200:1: ( rule__Person__Group__0__Impl rule__Person__Group__1 )
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:201:2: rule__Person__Group__0__Impl rule__Person__Group__1
            {
            pushFollow(FOLLOW_rule__Person__Group__0__Impl_in_rule__Person__Group__0358);
            rule__Person__Group__0__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__Person__Group__1_in_rule__Person__Group__0361);
            rule__Person__Group__1();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Person__Group__0"


    // $ANTLR start "rule__Person__Group__0__Impl"
    // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:208:1: rule__Person__Group__0__Impl : ( 'person' ) ;
    public final void rule__Person__Group__0__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:212:1: ( ( 'person' ) )
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:213:1: ( 'person' )
            {
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:213:1: ( 'person' )
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:214:1: 'person'
            {
             before(grammarAccess.getPersonAccess().getPersonKeyword_0()); 
            match(input,11,FOLLOW_11_in_rule__Person__Group__0__Impl389); 
             after(grammarAccess.getPersonAccess().getPersonKeyword_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Person__Group__0__Impl"


    // $ANTLR start "rule__Person__Group__1"
    // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:227:1: rule__Person__Group__1 : rule__Person__Group__1__Impl rule__Person__Group__2 ;
    public final void rule__Person__Group__1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:231:1: ( rule__Person__Group__1__Impl rule__Person__Group__2 )
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:232:2: rule__Person__Group__1__Impl rule__Person__Group__2
            {
            pushFollow(FOLLOW_rule__Person__Group__1__Impl_in_rule__Person__Group__1420);
            rule__Person__Group__1__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__Person__Group__2_in_rule__Person__Group__1423);
            rule__Person__Group__2();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Person__Group__1"


    // $ANTLR start "rule__Person__Group__1__Impl"
    // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:239:1: rule__Person__Group__1__Impl : ( ( rule__Person__NameAssignment_1 ) ) ;
    public final void rule__Person__Group__1__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:243:1: ( ( ( rule__Person__NameAssignment_1 ) ) )
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:244:1: ( ( rule__Person__NameAssignment_1 ) )
            {
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:244:1: ( ( rule__Person__NameAssignment_1 ) )
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:245:1: ( rule__Person__NameAssignment_1 )
            {
             before(grammarAccess.getPersonAccess().getNameAssignment_1()); 
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:246:1: ( rule__Person__NameAssignment_1 )
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:246:2: rule__Person__NameAssignment_1
            {
            pushFollow(FOLLOW_rule__Person__NameAssignment_1_in_rule__Person__Group__1__Impl450);
            rule__Person__NameAssignment_1();

            state._fsp--;


            }

             after(grammarAccess.getPersonAccess().getNameAssignment_1()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Person__Group__1__Impl"


    // $ANTLR start "rule__Person__Group__2"
    // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:256:1: rule__Person__Group__2 : rule__Person__Group__2__Impl rule__Person__Group__3 ;
    public final void rule__Person__Group__2() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:260:1: ( rule__Person__Group__2__Impl rule__Person__Group__3 )
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:261:2: rule__Person__Group__2__Impl rule__Person__Group__3
            {
            pushFollow(FOLLOW_rule__Person__Group__2__Impl_in_rule__Person__Group__2480);
            rule__Person__Group__2__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__Person__Group__3_in_rule__Person__Group__2483);
            rule__Person__Group__3();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Person__Group__2"


    // $ANTLR start "rule__Person__Group__2__Impl"
    // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:268:1: rule__Person__Group__2__Impl : ( ( rule__Person__RelsAssignment_2 ) ) ;
    public final void rule__Person__Group__2__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:272:1: ( ( ( rule__Person__RelsAssignment_2 ) ) )
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:273:1: ( ( rule__Person__RelsAssignment_2 ) )
            {
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:273:1: ( ( rule__Person__RelsAssignment_2 ) )
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:274:1: ( rule__Person__RelsAssignment_2 )
            {
             before(grammarAccess.getPersonAccess().getRelsAssignment_2()); 
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:275:1: ( rule__Person__RelsAssignment_2 )
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:275:2: rule__Person__RelsAssignment_2
            {
            pushFollow(FOLLOW_rule__Person__RelsAssignment_2_in_rule__Person__Group__2__Impl510);
            rule__Person__RelsAssignment_2();

            state._fsp--;


            }

             after(grammarAccess.getPersonAccess().getRelsAssignment_2()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Person__Group__2__Impl"


    // $ANTLR start "rule__Person__Group__3"
    // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:285:1: rule__Person__Group__3 : rule__Person__Group__3__Impl ;
    public final void rule__Person__Group__3() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:289:1: ( rule__Person__Group__3__Impl )
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:290:2: rule__Person__Group__3__Impl
            {
            pushFollow(FOLLOW_rule__Person__Group__3__Impl_in_rule__Person__Group__3540);
            rule__Person__Group__3__Impl();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Person__Group__3"


    // $ANTLR start "rule__Person__Group__3__Impl"
    // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:296:1: rule__Person__Group__3__Impl : ( ';' ) ;
    public final void rule__Person__Group__3__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:300:1: ( ( ';' ) )
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:301:1: ( ';' )
            {
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:301:1: ( ';' )
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:302:1: ';'
            {
             before(grammarAccess.getPersonAccess().getSemicolonKeyword_3()); 
            match(input,12,FOLLOW_12_in_rule__Person__Group__3__Impl568); 
             after(grammarAccess.getPersonAccess().getSemicolonKeyword_3()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Person__Group__3__Impl"


    // $ANTLR start "rule__RelationshipDescription__Group__0"
    // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:323:1: rule__RelationshipDescription__Group__0 : rule__RelationshipDescription__Group__0__Impl rule__RelationshipDescription__Group__1 ;
    public final void rule__RelationshipDescription__Group__0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:327:1: ( rule__RelationshipDescription__Group__0__Impl rule__RelationshipDescription__Group__1 )
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:328:2: rule__RelationshipDescription__Group__0__Impl rule__RelationshipDescription__Group__1
            {
            pushFollow(FOLLOW_rule__RelationshipDescription__Group__0__Impl_in_rule__RelationshipDescription__Group__0607);
            rule__RelationshipDescription__Group__0__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__RelationshipDescription__Group__1_in_rule__RelationshipDescription__Group__0610);
            rule__RelationshipDescription__Group__1();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__RelationshipDescription__Group__0"


    // $ANTLR start "rule__RelationshipDescription__Group__0__Impl"
    // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:335:1: rule__RelationshipDescription__Group__0__Impl : ( 'is in relationships with {' ) ;
    public final void rule__RelationshipDescription__Group__0__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:339:1: ( ( 'is in relationships with {' ) )
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:340:1: ( 'is in relationships with {' )
            {
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:340:1: ( 'is in relationships with {' )
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:341:1: 'is in relationships with {'
            {
             before(grammarAccess.getRelationshipDescriptionAccess().getIsInRelationshipsWithKeyword_0()); 
            match(input,13,FOLLOW_13_in_rule__RelationshipDescription__Group__0__Impl638); 
             after(grammarAccess.getRelationshipDescriptionAccess().getIsInRelationshipsWithKeyword_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__RelationshipDescription__Group__0__Impl"


    // $ANTLR start "rule__RelationshipDescription__Group__1"
    // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:354:1: rule__RelationshipDescription__Group__1 : rule__RelationshipDescription__Group__1__Impl rule__RelationshipDescription__Group__2 ;
    public final void rule__RelationshipDescription__Group__1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:358:1: ( rule__RelationshipDescription__Group__1__Impl rule__RelationshipDescription__Group__2 )
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:359:2: rule__RelationshipDescription__Group__1__Impl rule__RelationshipDescription__Group__2
            {
            pushFollow(FOLLOW_rule__RelationshipDescription__Group__1__Impl_in_rule__RelationshipDescription__Group__1669);
            rule__RelationshipDescription__Group__1__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__RelationshipDescription__Group__2_in_rule__RelationshipDescription__Group__1672);
            rule__RelationshipDescription__Group__2();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__RelationshipDescription__Group__1"


    // $ANTLR start "rule__RelationshipDescription__Group__1__Impl"
    // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:366:1: rule__RelationshipDescription__Group__1__Impl : ( ( rule__RelationshipDescription__RelAssignment_1 ) ) ;
    public final void rule__RelationshipDescription__Group__1__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:370:1: ( ( ( rule__RelationshipDescription__RelAssignment_1 ) ) )
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:371:1: ( ( rule__RelationshipDescription__RelAssignment_1 ) )
            {
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:371:1: ( ( rule__RelationshipDescription__RelAssignment_1 ) )
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:372:1: ( rule__RelationshipDescription__RelAssignment_1 )
            {
             before(grammarAccess.getRelationshipDescriptionAccess().getRelAssignment_1()); 
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:373:1: ( rule__RelationshipDescription__RelAssignment_1 )
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:373:2: rule__RelationshipDescription__RelAssignment_1
            {
            pushFollow(FOLLOW_rule__RelationshipDescription__RelAssignment_1_in_rule__RelationshipDescription__Group__1__Impl699);
            rule__RelationshipDescription__RelAssignment_1();

            state._fsp--;


            }

             after(grammarAccess.getRelationshipDescriptionAccess().getRelAssignment_1()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__RelationshipDescription__Group__1__Impl"


    // $ANTLR start "rule__RelationshipDescription__Group__2"
    // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:383:1: rule__RelationshipDescription__Group__2 : rule__RelationshipDescription__Group__2__Impl rule__RelationshipDescription__Group__3 ;
    public final void rule__RelationshipDescription__Group__2() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:387:1: ( rule__RelationshipDescription__Group__2__Impl rule__RelationshipDescription__Group__3 )
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:388:2: rule__RelationshipDescription__Group__2__Impl rule__RelationshipDescription__Group__3
            {
            pushFollow(FOLLOW_rule__RelationshipDescription__Group__2__Impl_in_rule__RelationshipDescription__Group__2729);
            rule__RelationshipDescription__Group__2__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__RelationshipDescription__Group__3_in_rule__RelationshipDescription__Group__2732);
            rule__RelationshipDescription__Group__3();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__RelationshipDescription__Group__2"


    // $ANTLR start "rule__RelationshipDescription__Group__2__Impl"
    // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:395:1: rule__RelationshipDescription__Group__2__Impl : ( ( rule__RelationshipDescription__Group_2__0 )* ) ;
    public final void rule__RelationshipDescription__Group__2__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:399:1: ( ( ( rule__RelationshipDescription__Group_2__0 )* ) )
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:400:1: ( ( rule__RelationshipDescription__Group_2__0 )* )
            {
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:400:1: ( ( rule__RelationshipDescription__Group_2__0 )* )
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:401:1: ( rule__RelationshipDescription__Group_2__0 )*
            {
             before(grammarAccess.getRelationshipDescriptionAccess().getGroup_2()); 
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:402:1: ( rule__RelationshipDescription__Group_2__0 )*
            loop3:
            do {
                int alt3=2;
                int LA3_0 = input.LA(1);

                if ( (LA3_0==15) ) {
                    alt3=1;
                }


                switch (alt3) {
            	case 1 :
            	    // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:402:2: rule__RelationshipDescription__Group_2__0
            	    {
            	    pushFollow(FOLLOW_rule__RelationshipDescription__Group_2__0_in_rule__RelationshipDescription__Group__2__Impl759);
            	    rule__RelationshipDescription__Group_2__0();

            	    state._fsp--;


            	    }
            	    break;

            	default :
            	    break loop3;
                }
            } while (true);

             after(grammarAccess.getRelationshipDescriptionAccess().getGroup_2()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__RelationshipDescription__Group__2__Impl"


    // $ANTLR start "rule__RelationshipDescription__Group__3"
    // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:412:1: rule__RelationshipDescription__Group__3 : rule__RelationshipDescription__Group__3__Impl ;
    public final void rule__RelationshipDescription__Group__3() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:416:1: ( rule__RelationshipDescription__Group__3__Impl )
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:417:2: rule__RelationshipDescription__Group__3__Impl
            {
            pushFollow(FOLLOW_rule__RelationshipDescription__Group__3__Impl_in_rule__RelationshipDescription__Group__3790);
            rule__RelationshipDescription__Group__3__Impl();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__RelationshipDescription__Group__3"


    // $ANTLR start "rule__RelationshipDescription__Group__3__Impl"
    // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:423:1: rule__RelationshipDescription__Group__3__Impl : ( '}' ) ;
    public final void rule__RelationshipDescription__Group__3__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:427:1: ( ( '}' ) )
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:428:1: ( '}' )
            {
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:428:1: ( '}' )
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:429:1: '}'
            {
             before(grammarAccess.getRelationshipDescriptionAccess().getRightCurlyBracketKeyword_3()); 
            match(input,14,FOLLOW_14_in_rule__RelationshipDescription__Group__3__Impl818); 
             after(grammarAccess.getRelationshipDescriptionAccess().getRightCurlyBracketKeyword_3()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__RelationshipDescription__Group__3__Impl"


    // $ANTLR start "rule__RelationshipDescription__Group_2__0"
    // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:450:1: rule__RelationshipDescription__Group_2__0 : rule__RelationshipDescription__Group_2__0__Impl rule__RelationshipDescription__Group_2__1 ;
    public final void rule__RelationshipDescription__Group_2__0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:454:1: ( rule__RelationshipDescription__Group_2__0__Impl rule__RelationshipDescription__Group_2__1 )
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:455:2: rule__RelationshipDescription__Group_2__0__Impl rule__RelationshipDescription__Group_2__1
            {
            pushFollow(FOLLOW_rule__RelationshipDescription__Group_2__0__Impl_in_rule__RelationshipDescription__Group_2__0857);
            rule__RelationshipDescription__Group_2__0__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__RelationshipDescription__Group_2__1_in_rule__RelationshipDescription__Group_2__0860);
            rule__RelationshipDescription__Group_2__1();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__RelationshipDescription__Group_2__0"


    // $ANTLR start "rule__RelationshipDescription__Group_2__0__Impl"
    // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:462:1: rule__RelationshipDescription__Group_2__0__Impl : ( ',' ) ;
    public final void rule__RelationshipDescription__Group_2__0__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:466:1: ( ( ',' ) )
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:467:1: ( ',' )
            {
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:467:1: ( ',' )
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:468:1: ','
            {
             before(grammarAccess.getRelationshipDescriptionAccess().getCommaKeyword_2_0()); 
            match(input,15,FOLLOW_15_in_rule__RelationshipDescription__Group_2__0__Impl888); 
             after(grammarAccess.getRelationshipDescriptionAccess().getCommaKeyword_2_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__RelationshipDescription__Group_2__0__Impl"


    // $ANTLR start "rule__RelationshipDescription__Group_2__1"
    // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:481:1: rule__RelationshipDescription__Group_2__1 : rule__RelationshipDescription__Group_2__1__Impl ;
    public final void rule__RelationshipDescription__Group_2__1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:485:1: ( rule__RelationshipDescription__Group_2__1__Impl )
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:486:2: rule__RelationshipDescription__Group_2__1__Impl
            {
            pushFollow(FOLLOW_rule__RelationshipDescription__Group_2__1__Impl_in_rule__RelationshipDescription__Group_2__1919);
            rule__RelationshipDescription__Group_2__1__Impl();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__RelationshipDescription__Group_2__1"


    // $ANTLR start "rule__RelationshipDescription__Group_2__1__Impl"
    // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:492:1: rule__RelationshipDescription__Group_2__1__Impl : ( ( rule__RelationshipDescription__RelAssignment_2_1 ) ) ;
    public final void rule__RelationshipDescription__Group_2__1__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:496:1: ( ( ( rule__RelationshipDescription__RelAssignment_2_1 ) ) )
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:497:1: ( ( rule__RelationshipDescription__RelAssignment_2_1 ) )
            {
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:497:1: ( ( rule__RelationshipDescription__RelAssignment_2_1 ) )
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:498:1: ( rule__RelationshipDescription__RelAssignment_2_1 )
            {
             before(grammarAccess.getRelationshipDescriptionAccess().getRelAssignment_2_1()); 
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:499:1: ( rule__RelationshipDescription__RelAssignment_2_1 )
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:499:2: rule__RelationshipDescription__RelAssignment_2_1
            {
            pushFollow(FOLLOW_rule__RelationshipDescription__RelAssignment_2_1_in_rule__RelationshipDescription__Group_2__1__Impl946);
            rule__RelationshipDescription__RelAssignment_2_1();

            state._fsp--;


            }

             after(grammarAccess.getRelationshipDescriptionAccess().getRelAssignment_2_1()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__RelationshipDescription__Group_2__1__Impl"


    // $ANTLR start "rule__Model__PersonsAssignment"
    // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:514:1: rule__Model__PersonsAssignment : ( rulePerson ) ;
    public final void rule__Model__PersonsAssignment() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:518:1: ( ( rulePerson ) )
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:519:1: ( rulePerson )
            {
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:519:1: ( rulePerson )
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:520:1: rulePerson
            {
             before(grammarAccess.getModelAccess().getPersonsPersonParserRuleCall_0()); 
            pushFollow(FOLLOW_rulePerson_in_rule__Model__PersonsAssignment985);
            rulePerson();

            state._fsp--;

             after(grammarAccess.getModelAccess().getPersonsPersonParserRuleCall_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Model__PersonsAssignment"


    // $ANTLR start "rule__Person__NameAssignment_1"
    // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:529:1: rule__Person__NameAssignment_1 : ( RULE_ID ) ;
    public final void rule__Person__NameAssignment_1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:533:1: ( ( RULE_ID ) )
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:534:1: ( RULE_ID )
            {
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:534:1: ( RULE_ID )
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:535:1: RULE_ID
            {
             before(grammarAccess.getPersonAccess().getNameIDTerminalRuleCall_1_0()); 
            match(input,RULE_ID,FOLLOW_RULE_ID_in_rule__Person__NameAssignment_11016); 
             after(grammarAccess.getPersonAccess().getNameIDTerminalRuleCall_1_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Person__NameAssignment_1"


    // $ANTLR start "rule__Person__RelsAssignment_2"
    // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:544:1: rule__Person__RelsAssignment_2 : ( ( rule__Person__RelsAlternatives_2_0 ) ) ;
    public final void rule__Person__RelsAssignment_2() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:548:1: ( ( ( rule__Person__RelsAlternatives_2_0 ) ) )
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:549:1: ( ( rule__Person__RelsAlternatives_2_0 ) )
            {
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:549:1: ( ( rule__Person__RelsAlternatives_2_0 ) )
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:550:1: ( rule__Person__RelsAlternatives_2_0 )
            {
             before(grammarAccess.getPersonAccess().getRelsAlternatives_2_0()); 
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:551:1: ( rule__Person__RelsAlternatives_2_0 )
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:551:2: rule__Person__RelsAlternatives_2_0
            {
            pushFollow(FOLLOW_rule__Person__RelsAlternatives_2_0_in_rule__Person__RelsAssignment_21047);
            rule__Person__RelsAlternatives_2_0();

            state._fsp--;


            }

             after(grammarAccess.getPersonAccess().getRelsAlternatives_2_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Person__RelsAssignment_2"


    // $ANTLR start "rule__RelationshipDescription__RelAssignment_1"
    // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:560:1: rule__RelationshipDescription__RelAssignment_1 : ( ( RULE_ID ) ) ;
    public final void rule__RelationshipDescription__RelAssignment_1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:564:1: ( ( ( RULE_ID ) ) )
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:565:1: ( ( RULE_ID ) )
            {
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:565:1: ( ( RULE_ID ) )
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:566:1: ( RULE_ID )
            {
             before(grammarAccess.getRelationshipDescriptionAccess().getRelPersonCrossReference_1_0()); 
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:567:1: ( RULE_ID )
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:568:1: RULE_ID
            {
             before(grammarAccess.getRelationshipDescriptionAccess().getRelPersonIDTerminalRuleCall_1_0_1()); 
            match(input,RULE_ID,FOLLOW_RULE_ID_in_rule__RelationshipDescription__RelAssignment_11084); 
             after(grammarAccess.getRelationshipDescriptionAccess().getRelPersonIDTerminalRuleCall_1_0_1()); 

            }

             after(grammarAccess.getRelationshipDescriptionAccess().getRelPersonCrossReference_1_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__RelationshipDescription__RelAssignment_1"


    // $ANTLR start "rule__RelationshipDescription__RelAssignment_2_1"
    // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:579:1: rule__RelationshipDescription__RelAssignment_2_1 : ( ( RULE_ID ) ) ;
    public final void rule__RelationshipDescription__RelAssignment_2_1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:583:1: ( ( ( RULE_ID ) ) )
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:584:1: ( ( RULE_ID ) )
            {
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:584:1: ( ( RULE_ID ) )
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:585:1: ( RULE_ID )
            {
             before(grammarAccess.getRelationshipDescriptionAccess().getRelPersonCrossReference_2_1_0()); 
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:586:1: ( RULE_ID )
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:587:1: RULE_ID
            {
             before(grammarAccess.getRelationshipDescriptionAccess().getRelPersonIDTerminalRuleCall_2_1_0_1()); 
            match(input,RULE_ID,FOLLOW_RULE_ID_in_rule__RelationshipDescription__RelAssignment_2_11123); 
             after(grammarAccess.getRelationshipDescriptionAccess().getRelPersonIDTerminalRuleCall_2_1_0_1()); 

            }

             after(grammarAccess.getRelationshipDescriptionAccess().getRelPersonCrossReference_2_1_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__RelationshipDescription__RelAssignment_2_1"


    // $ANTLR start "rule__NoRelationships__RelAssignment"
    // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:598:1: rule__NoRelationships__RelAssignment : ( ( 'is alone' ) ) ;
    public final void rule__NoRelationships__RelAssignment() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:602:1: ( ( ( 'is alone' ) ) )
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:603:1: ( ( 'is alone' ) )
            {
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:603:1: ( ( 'is alone' ) )
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:604:1: ( 'is alone' )
            {
             before(grammarAccess.getNoRelationshipsAccess().getRelIsAloneKeyword_0()); 
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:605:1: ( 'is alone' )
            // ../ru.spbau.turaev.depgraph.ui/src-gen/ru/spbau/turaev/depgraph/ui/contentassist/antlr/internal/InternalMyDsl.g:606:1: 'is alone'
            {
             before(grammarAccess.getNoRelationshipsAccess().getRelIsAloneKeyword_0()); 
            match(input,16,FOLLOW_16_in_rule__NoRelationships__RelAssignment1163); 
             after(grammarAccess.getNoRelationshipsAccess().getRelIsAloneKeyword_0()); 

            }

             after(grammarAccess.getNoRelationshipsAccess().getRelIsAloneKeyword_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__NoRelationships__RelAssignment"

    // Delegated rules


 

    public static final BitSet FOLLOW_ruleModel_in_entryRuleModel61 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleModel68 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Model__PersonsAssignment_in_ruleModel94 = new BitSet(new long[]{0x0000000000000802L});
    public static final BitSet FOLLOW_rulePerson_in_entryRulePerson122 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRulePerson129 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Person__Group__0_in_rulePerson155 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleRelationshipDescription_in_entryRuleRelationshipDescription182 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleRelationshipDescription189 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__RelationshipDescription__Group__0_in_ruleRelationshipDescription215 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleNoRelationships_in_entryRuleNoRelationships242 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleNoRelationships249 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__NoRelationships__RelAssignment_in_ruleNoRelationships275 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleRelationshipDescription_in_rule__Person__RelsAlternatives_2_0311 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleNoRelationships_in_rule__Person__RelsAlternatives_2_0328 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Person__Group__0__Impl_in_rule__Person__Group__0358 = new BitSet(new long[]{0x0000000000000010L});
    public static final BitSet FOLLOW_rule__Person__Group__1_in_rule__Person__Group__0361 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_11_in_rule__Person__Group__0__Impl389 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Person__Group__1__Impl_in_rule__Person__Group__1420 = new BitSet(new long[]{0x0000000000012000L});
    public static final BitSet FOLLOW_rule__Person__Group__2_in_rule__Person__Group__1423 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Person__NameAssignment_1_in_rule__Person__Group__1__Impl450 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Person__Group__2__Impl_in_rule__Person__Group__2480 = new BitSet(new long[]{0x0000000000001000L});
    public static final BitSet FOLLOW_rule__Person__Group__3_in_rule__Person__Group__2483 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Person__RelsAssignment_2_in_rule__Person__Group__2__Impl510 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Person__Group__3__Impl_in_rule__Person__Group__3540 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_12_in_rule__Person__Group__3__Impl568 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__RelationshipDescription__Group__0__Impl_in_rule__RelationshipDescription__Group__0607 = new BitSet(new long[]{0x0000000000000010L});
    public static final BitSet FOLLOW_rule__RelationshipDescription__Group__1_in_rule__RelationshipDescription__Group__0610 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_13_in_rule__RelationshipDescription__Group__0__Impl638 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__RelationshipDescription__Group__1__Impl_in_rule__RelationshipDescription__Group__1669 = new BitSet(new long[]{0x000000000000C000L});
    public static final BitSet FOLLOW_rule__RelationshipDescription__Group__2_in_rule__RelationshipDescription__Group__1672 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__RelationshipDescription__RelAssignment_1_in_rule__RelationshipDescription__Group__1__Impl699 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__RelationshipDescription__Group__2__Impl_in_rule__RelationshipDescription__Group__2729 = new BitSet(new long[]{0x000000000000C000L});
    public static final BitSet FOLLOW_rule__RelationshipDescription__Group__3_in_rule__RelationshipDescription__Group__2732 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__RelationshipDescription__Group_2__0_in_rule__RelationshipDescription__Group__2__Impl759 = new BitSet(new long[]{0x0000000000008002L});
    public static final BitSet FOLLOW_rule__RelationshipDescription__Group__3__Impl_in_rule__RelationshipDescription__Group__3790 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_14_in_rule__RelationshipDescription__Group__3__Impl818 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__RelationshipDescription__Group_2__0__Impl_in_rule__RelationshipDescription__Group_2__0857 = new BitSet(new long[]{0x0000000000000010L});
    public static final BitSet FOLLOW_rule__RelationshipDescription__Group_2__1_in_rule__RelationshipDescription__Group_2__0860 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_15_in_rule__RelationshipDescription__Group_2__0__Impl888 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__RelationshipDescription__Group_2__1__Impl_in_rule__RelationshipDescription__Group_2__1919 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__RelationshipDescription__RelAssignment_2_1_in_rule__RelationshipDescription__Group_2__1__Impl946 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rulePerson_in_rule__Model__PersonsAssignment985 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_RULE_ID_in_rule__Person__NameAssignment_11016 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Person__RelsAlternatives_2_0_in_rule__Person__RelsAssignment_21047 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_RULE_ID_in_rule__RelationshipDescription__RelAssignment_11084 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_RULE_ID_in_rule__RelationshipDescription__RelAssignment_2_11123 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_16_in_rule__NoRelationships__RelAssignment1163 = new BitSet(new long[]{0x0000000000000002L});

}