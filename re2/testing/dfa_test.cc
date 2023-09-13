// Copyright 2006-2008 The RE2 Authors.  All Rights Reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

#include <stdlib.h>
#include <ctime>
#include <ratio>
#include <chrono>
#include "fstream"
#include <stdint.h>
#include <string>
#include <thread>
#include <vector>
#include <iostream>
#include "util/test.h"
#include "util/flags.h"
#include "util/logging.h"
#include "util/malloc_counter.h"
#include "util/strutil.h"
#include "re2/prog.h"
#include "re2/re2.h"
#include "re2/regexp.h"
#include "re2/testing/regexp_generator.h"
#include "re2/testing/string_generator.h"
#include <filesystem>
#include <dirent.h>

static const bool UsingMallocCounter = false;

DEFINE_FLAG(int, size, 8, "log2(number of DFA nodes)");
DEFINE_FLAG(int, repeat, 2, "Repetition count.");
DEFINE_FLAG(int, threads, 4, "number of threads");

namespace re2 {

static int state_cache_resets = 0;
static int search_failures = 0;

struct SetHooks {
  SetHooks() {
    hooks::SetDFAStateCacheResetHook([](const hooks::DFAStateCacheReset&) {
      ++state_cache_resets;
    });
    hooks::SetDFASearchFailureHook([](const hooks::DFASearchFailure&) {
      ++search_failures;
    });
  }
} set_hooks;

// Check that multithreaded access to DFA class works.

// Helper function: builds entire DFA for prog.
static void DoBuild(Prog* prog) {
  ASSERT_TRUE(prog->BuildEntireDFA(Prog::kFirstMatch, nullptr));
}

TEST(Multithreaded, BuildEntireDFA) {
  // Create regexp with 2^FLAGS_size states in DFA.
  std::string s = "a";
  //for (int i = 0; i < GetFlag(FLAGS_size); i++)
    //s += "[ab]";
  //std::cout << s << std::endl;
  //s += "y*";
  //s = "[ab]*b[ab]{50}";
  //s = "[\u3007\u3400-\u4DBF\u4E00-\u9FEF\\x{20000}-\\x{2EBFF}]";
  //s = "[\u3007\u3006]*\u3007.{12}";
  //s = ".*\\p{Sc}[^\\d]{8}%ppPPP";  (?=(ab|az)*bf)bf
  //s = "fswqas[bc]*ba\\w{24}";
  //s = "[ab]*b[ab]{10}";
  //s = ".*b[hfasdab]{16}";
  //s = "[a-z]{1}[a-z0-9\\-_\\.]{2,24}@tlen\\.pl";//[ab]*(ab){10}[ab]*
  s = "((ab|a|b){0,10})+";
  //s = "[abc]*b[ab]{10}";//[ab]*(ab){10}[ab]*
  //s = ".*<\\s*valitem[^>]*\\s(value|name)\\s*=\\s*([\\x22\\x27])[^\\x22\\x27]{104}";
  //s = "[qwertyuiopasdghjklzxcvbm]";
  s = "(a*|(ab*)(ab*)(ab*)(ab*)(ab*)(ab*)a)*";
  //s = "b[ab]{10}";
  //s = "%[^\x0d\x0a]{1000}";
  std::cout << s << std::endl;
  Regexp* re = re2::Regexp::Parse(s, Regexp::LikePerl, NULL);
  re->Simplify();
  std::cout << re->Dump() << std::endl;
  ASSERT_TRUE(re != NULL); 
  // Check that single-threaded code works.
  {
    Prog* prog = re->CompileToProg(0);
    ASSERT_TRUE(prog != NULL);
    std::cout << "NFA" << std::endl;
    //std::cout << prog->DumpByteMap() << std::endl;
    int n = 10;
    std::ifstream outfile;
    std::string line;
    char ch, ch1;
    struct dirent *ptr;
    DIR *dir;
    std::string PATH = "/home/huangh/PureEvilTxTGen/attack_PureEvil100000above20_text/Redos_list";
    dir=opendir(PATH.c_str());
    std::vector<std::string> files;
    std::cout << "文件列表: "<< std::endl;
    while((ptr=readdir(dir))!=NULL)
    {
        if(ptr->d_name[0] == '.')
            continue;
        files.push_back(ptr->d_name);
    }
    closedir(dir);
    std::ofstream result;
    result.open("/home/huangh/PureEvilTxTGen/result/snort_in_re2_0911.txt");
    int above10s = 0, above5s = 0, above1s = 0, above20s = 0, regex_nun = 0, above50s = 0, above80s = 0, above100s = 0;
    for (auto& i : files) {
      std::ifstream in_regex("/home/huangh/PureEvilTxTGen/attack_PureEvil100000above20_text/Redos_list/" + i);
      if (!in_regex)
        std::cout << "open error" << std::endl;
      std::string regex_text;
      std::string regex_name;
      getline(in_regex, regex_name);
      getline(in_regex, regex_text);
      in_regex.close();
      std::ifstream in(regex_text);
      std::istreambuf_iterator<char> begin1(in);
      std::istreambuf_iterator<char> end1;
      std::string match(begin1, end1);
      unsigned long text_length = match.length();
      StringPiece str1 = "6";
      //std::cout << "sdasdf" << std::endl;

      std::cout << regex_name << std::endl;
      result << regex_name << '\n';
      auto start = std::chrono::high_resolution_clock::now();
      std::cout << RE2::GlobalReplace(&match, regex_name, str1) << std::endl;
      auto end = std::chrono::high_resolution_clock::now();

      // 以毫秒为单位，返回所用时间
      std::cout << "in millisecond time:";
      result << "in millisecond time:";
      std::chrono::duration<double, std::ratio<1, 1000>> diff = end - start;
      std::cout << "Time is " << diff.count() << " ms\n";
      result << "Time is " << diff.count() << " ms\n";

    
      std::cout<<"in seconds time:";
      result << "in seconds time:";
      std::chrono::duration<double,std::ratio<1,1>> duration_s(end-start);
      std::cout<<duration_s.count()<<" seconds"<<std::endl;
      result << duration_s.count()<<" seconds\n";
      if (duration_s.count() >= 1){
          if (duration_s.count() >= 5){
              if (duration_s.count() >= 10){
                  if (duration_s.count() >= 20){
                      if (duration_s.count() >= 50)
                          if (duration_s.count() >= 80){
                              if (duration_s.count() >= 100)
                                  above100s++;
                              else
                                above80s++;
                          } else
                            above50s++;
                      else
                        above20s++;
                  } else
                      above10s++;
              } else
                  above5s++;
          } else
              above1s++;
      }
      regex_nun++;
      //std::cout << match << std::endl;
      std::cout << "Thourghput:" << text_length/duration_s.count() << "B/s" << std::endl;
      result << "Thourghput:" << text_length/duration_s.count() << "B/s\n";
      std::cout << text_length << std::endl;
      result << "attack text length: " << text_length << "B" << "\n\n";
      //std::cout << match.length() << "长度" << std::endl;
    }
    std::cout << "higher than 1s lower than 5s : " << above1s << std::endl;
    std::cout << "higher than 5s lower than 10s : " << above5s << std::endl;
    std::cout << "higher than 10s lower than 20s : " << above10s << std::endl;
    std::cout << "higher than 20s lower than 50s: " << above20s << std::endl;
    std::cout << "higher than 50s lower than 80s: " << above50s << std::endl;
    std::cout << "higher than 80s lower than 100s: " << above80s << std::endl;
    std::cout << "higher than 100s: " << above100s << std::endl;
    std::cout << "regex num : " << regex_nun << std::endl;
    result.close();
//begin
	  /* std::ifstream in("/Users/huanghong/Desktop/git/output.txt");
     if (!in)
       std::cout << "open error" << std::endl;
     std::istreambuf_iterator<char> begin1(in);
     std::istreambuf_iterator<char> end1;
     std::string match(begin1, end1);
     unsigned long text_length = match.length();
     //getline(outfile, match);
     //match = "hostnameahostnameahostnamehostnamehostnameaaahostnameaahostnamehostnameahostnameaaaahostnamehostnamehostnamehostnameahostnamehostnameaabahostname";

     StringPiece str1 = "6";
     //std::cout << "sdasdf" << std::endl;
     auto start = std::chrono::high_resolution_clock::now();
     std::cout << match << std::endl;
     //std::cout << RE2::GlobalReplace(&match, "host\\w{50}", str1) << std::endl;
     //std::cout << match.length() << "长度" << std::endl;
     //std::cout << RE2::PartialMatch(match, "/ALTER\\s.*?FILE\\s+((AS|MEMBER|TO)\\s+)?(\\x27[^\\x27]{512}|\\x22[^\\x22]{512})/smi") << std::endl;
     std::cout << RE2::FullMatch(match, ".*host\\w{50}") << std::endl;
     auto end = std::chrono::high_resolution_clock::now();

     // 以毫秒为单位，返回所用时间
     std::cout << "in millisecond time:";
     std::chrono::duration<double, std::ratio<1, 1000>> diff = end - start;
     std::cout << "Time is " << diff.count() << " ms\n";

    


     std::cout<<"in seconds time:";
     std::chrono::duration<double,std::ratio<1,1>> duration_s(end-start);
     std::cout<<duration_s.count()<<" seconds"<<std::endl;
     //std::cout << match << std::endl;

     std::cout << "Thourghput:" << text_length/duration_s.count() << "b/s" << std::endl;
     std::cout << text_length << std::endl;*/
     // end

    //std::cout << prog->BuildEntireDFA(Prog::kFullMatch, nullptr) << std::endl;;
    //std::cout << prog->DumpByteMap() << std::endl;
    //std::cout << prog->Dump() << std::endl;
    /*std::cout << "cha map" << std::endl;
    for (int i = 0; i < 256; i++)
    {
      std::cout << prog->bytemap()[i] << std::endl;
    }*/
    
    //std::cout << prog->inst(3)->Dump() << std::endl;
    //std::cout << "nunber of sub regex" << std::endl;
    //std::cout << re->nsub_ << std::endl;
    //std::thread t(DoBuild, prog);
    //t.join();
    //std::cout << "state of DFA" << std::endl;
    //std::cout << prog->BuildEntireDFA(Prog::kFirstMatch, nullptr) << std::endl;;
    exit(100);
    delete prog;
  }

  // Build the DFA simultaneously in a bunch of threads.
  for (int i = 0; i < GetFlag(FLAGS_repeat); i++) {
    Prog* prog = re->CompileToProg(0);
    ASSERT_TRUE(prog != NULL);

    std::vector<std::thread> threads;
    for (int j = 0; j < GetFlag(FLAGS_threads); j++)
      threads.emplace_back(DoBuild, prog);
    for (int j = 0; j < GetFlag(FLAGS_threads); j++)
      threads[j].join();

    // One more compile, to make sure everything is okay.
    std::cout << "nun of state of DFA" << std::endl;
    //std::cout << prog->BuildEntireDFA(Prog::kFirstMatch, nullptr) << std::endl;;
    delete prog;
  }

  re->Decref();
}

// Check that DFA size requirements are followed.
// BuildEntireDFA will, like SearchDFA, stop building out
// the DFA once the memory limits are reached.
TEST(SingleThreaded, BuildEntireDFA) {
  // Create regexp with 2^30 states in DFA.
  Regexp* re = Regexp::Parse("a[ab]{30}b", Regexp::LikePerl, NULL);
  ASSERT_TRUE(re != NULL);

  for (int i = 17; i < 24; i++) {
    int64_t limit = int64_t{1}<<i;
    int64_t usage;
    //int64_t progusage, dfamem;
    {
      testing::MallocCounter m(testing::MallocCounter::THIS_THREAD_ONLY);
      Prog* prog = re->CompileToProg(limit);
      ASSERT_TRUE(prog != NULL);
      //progusage = m.HeapGrowth();
      //dfamem = prog->dfa_mem();
      prog->BuildEntireDFA(Prog::kFirstMatch, nullptr);
      prog->BuildEntireDFA(Prog::kLongestMatch, nullptr);
      usage = m.HeapGrowth();
      delete prog;
    }
    if (UsingMallocCounter) {
      //LOG(INFO) << "limit " << limit << ", "
      //          << "prog usage " << progusage << ", "
      //          << "DFA budget " << dfamem << ", "
      //          << "total " << usage;
      // Tolerate +/- 10%.
      ASSERT_GT(usage, limit*9/10);
      ASSERT_LT(usage, limit*11/10);
    }
  }
  re->Decref();
}

// Test that the DFA gets the right result even if it runs
// out of memory during a search.  The regular expression
// 0[01]{n}$ matches a binary string of 0s and 1s only if
// the (n+1)th-to-last character is a 0.  Matching this in
// a single forward pass (as done by the DFA) requires
// keeping one bit for each of the last n+1 characters
// (whether each was a 0), or 2^(n+1) possible states.
// If we run this regexp to search in a string that contains
// every possible n-character binary string as a substring,
// then it will have to run through at least 2^n states.
// States are big data structures -- certainly more than 1 byte --
// so if the DFA can search correctly while staying within a
// 2^n byte limit, it must be handling out-of-memory conditions
// gracefully.
TEST(SingleThreaded, SearchDFA) {
  // The De Bruijn string is the worst case input for this regexp.
  // By default, the DFA will notice that it is flushing its cache
  // too frequently and will bail out early, so that RE2 can use the
  // NFA implementation instead.  (The DFA loses its speed advantage
  // if it can't get a good cache hit rate.)
  // Tell the DFA to trudge along instead.
  Prog::TESTING_ONLY_set_dfa_should_bail_when_slow(false);
  state_cache_resets = 0;
  search_failures = 0;

  // Choice of n is mostly arbitrary, except that:
  //   * making n too big makes the test run for too long.
  //   * making n too small makes the DFA refuse to run,
  //     because it has so little memory compared to the program size.
  // Empirically, n = 18 is a good compromise between the two.
  const int n = 18;

  Regexp* re = Regexp::Parse(StringPrintf("0[01]{%d}$", n),
                             Regexp::LikePerl, NULL);
  ASSERT_TRUE(re != NULL);

  // The De Bruijn string for n ends with a 1 followed by n 0s in a row,
  // which is not a match for 0[01]{n}$.  Adding one more 0 is a match.
  std::string no_match = DeBruijnString(n);
  std::string match = no_match + "0";

  int64_t usage;
  int64_t peak_usage;
  {
    testing::MallocCounter m(testing::MallocCounter::THIS_THREAD_ONLY);
    Prog* prog = re->CompileToProg(1<<n);
    ASSERT_TRUE(prog != NULL);
    for (int i = 0; i < 10; i++) {
      bool matched = false;
      bool failed = false;
      matched = prog->SearchDFA(match, StringPiece(), Prog::kUnanchored,
                                Prog::kFirstMatch, NULL, &failed, NULL);
      ASSERT_FALSE(failed);
      ASSERT_TRUE(matched);
      matched = prog->SearchDFA(no_match, StringPiece(), Prog::kUnanchored,
                                Prog::kFirstMatch, NULL, &failed, NULL);
      ASSERT_FALSE(failed);
      ASSERT_FALSE(matched);
    }
    usage = m.HeapGrowth();
    peak_usage = m.PeakHeapGrowth();
    delete prog;
  }
  if (UsingMallocCounter) {
    //LOG(INFO) << "usage " << usage << ", "
    //          << "peak usage " << peak_usage;
    ASSERT_LT(usage, 1<<n);
    ASSERT_LT(peak_usage, 1<<n);
  }
  re->Decref();

  // Reset to original behaviour.
  Prog::TESTING_ONLY_set_dfa_should_bail_when_slow(true);
  ASSERT_GT(state_cache_resets, 0);
  ASSERT_EQ(search_failures, 0);
}

// Helper function: searches for match, which should match,
// and no_match, which should not.
static void DoSearch(Prog* prog, const StringPiece& match,
                     const StringPiece& no_match) {
  for (int i = 0; i < 2; i++) {
    bool matched = false;
    bool failed = false;
    matched = prog->SearchDFA(match, StringPiece(), Prog::kUnanchored,
                              Prog::kFirstMatch, NULL, &failed, NULL);
    ASSERT_FALSE(failed);
    ASSERT_TRUE(matched);
    matched = prog->SearchDFA(no_match, StringPiece(), Prog::kUnanchored,
                              Prog::kFirstMatch, NULL, &failed, NULL);
    ASSERT_FALSE(failed);
    ASSERT_FALSE(matched);
  }
}

TEST(Multithreaded, SearchDFA) {
  Prog::TESTING_ONLY_set_dfa_should_bail_when_slow(false);
  state_cache_resets = 0;
  search_failures = 0;

  // Same as single-threaded test above.
  const int n = 18;
  Regexp* re = Regexp::Parse(StringPrintf("0[01]{%d}$", n),
                             Regexp::LikePerl, NULL);
  ASSERT_TRUE(re != NULL);
  std::string no_match = DeBruijnString(n);
  std::string match = no_match + "0";

  // Check that single-threaded code works.
  {
    Prog* prog = re->CompileToProg(1<<n);
    ASSERT_TRUE(prog != NULL);

    std::thread t(DoSearch, prog, match, no_match);
    t.join();

    delete prog;
  }

  // Run the search simultaneously in a bunch of threads.
  // Reuse same flags for Multithreaded.BuildDFA above.
  for (int i = 0; i < GetFlag(FLAGS_repeat); i++) {
    Prog* prog = re->CompileToProg(1<<n);
    ASSERT_TRUE(prog != NULL);

    std::vector<std::thread> threads;
    for (int j = 0; j < GetFlag(FLAGS_threads); j++)
      threads.emplace_back(DoSearch, prog, match, no_match);
    for (int j = 0; j < GetFlag(FLAGS_threads); j++)
      threads[j].join();

    delete prog;
  }

  re->Decref();

  // Reset to original behaviour.
  Prog::TESTING_ONLY_set_dfa_should_bail_when_slow(true);
  ASSERT_GT(state_cache_resets, 0);
  ASSERT_EQ(search_failures, 0);
}

struct ReverseTest {
  const char* regexp;
  const char* text;
  bool match;
};

// Test that reverse DFA handles anchored/unanchored correctly.
// It's in the DFA interface but not used by RE2.
ReverseTest reverse_tests[] = {
  { "\\A(a|b)", "abc", true },
  { "(a|b)\\z", "cba", true },
  { "\\A(a|b)", "cba", false },
  { "(a|b)\\z", "abc", false },
};

TEST(DFA, ReverseMatch) {
  int nfail = 0;
  for (size_t i = 0; i < arraysize(reverse_tests); i++) {
    const ReverseTest& t = reverse_tests[i];
    Regexp* re = Regexp::Parse(t.regexp, Regexp::LikePerl, NULL);
    ASSERT_TRUE(re != NULL);
    Prog* prog = re->CompileToReverseProg(0);
    ASSERT_TRUE(prog != NULL);
    bool failed = false;
    bool matched = prog->SearchDFA(t.text, StringPiece(), Prog::kUnanchored,
                                   Prog::kFirstMatch, NULL, &failed, NULL);
    if (matched != t.match) {
      LOG(ERROR) << t.regexp << " on " << t.text << ": want " << t.match;
      nfail++;
    }
    delete prog;
    re->Decref();
  }
  EXPECT_EQ(nfail, 0);
}

struct CallbackTest {
  const char* regexp;
  const char* dump;
};

// Test that DFA::BuildAllStates() builds the expected DFA states
// and issues the expected callbacks. These test cases reflect the
// very compact encoding of the callbacks, but that also makes them
// very difficult to understand, so let's work through "\\Aa\\z".
// There are three slots per DFA state because the bytemap has two
// equivalence classes and there is a third slot for kByteEndText:
//   0: all bytes that are not 'a'
//   1: the byte 'a'
//   2: kByteEndText
// -1 means that there is no transition from that DFA state to any
// other DFA state for that slot. The valid transitions are thus:
//   state 0 --slot 1--> state 1
//   state 1 --slot 2--> state 2
// The double brackets indicate that state 2 is a matching state.
// Putting it together, this means that the DFA must consume the
// byte 'a' and then hit end of text. Q.E.D.
CallbackTest callback_tests[] = {
  { "\\Aa\\z", "[-1,1,-1] [-1,-1,2] [[-1,-1,-1]]" },
  { "\\Aab\\z", "[-1,1,-1,-1] [-1,-1,2,-1] [-1,-1,-1,3] [[-1,-1,-1,-1]]" },
  { "\\Aa*b\\z", "[-1,0,1,-1] [-1,-1,-1,2] [[-1,-1,-1,-1]]" },
  { "\\Aa+b\\z", "[-1,1,-1,-1] [-1,1,2,-1] [-1,-1,-1,3] [[-1,-1,-1,-1]]" },
  { "\\Aa?b\\z", "[-1,1,2,-1] [-1,-1,2,-1] [-1,-1,-1,3] [[-1,-1,-1,-1]]" },
  { "\\Aa\\C*\\z", "[-1,1,-1] [1,1,2] [[-1,-1,-1]]" },
  { "\\Aa\\C*", "[-1,1,-1] [2,2,3] [[2,2,2]] [[-1,-1,-1]]" },
  { "a\\C*", "[0,1,-1] [2,2,3] [[2,2,2]] [[-1,-1,-1]]" },
  { "\\C*", "[1,2] [[1,1]] [[-1,-1]]" },
  { "a", "[0,1,-1] [2,2,2] [[-1,-1,-1]]"} ,
};

TEST(DFA, Callback) {
  int nfail = 0;
  for (size_t i = 0; i < arraysize(callback_tests); i++) {
    const CallbackTest& t = callback_tests[i];
    Regexp* re = Regexp::Parse(t.regexp, Regexp::LikePerl, NULL);
    ASSERT_TRUE(re != NULL);
    Prog* prog = re->CompileToProg(0);
    ASSERT_TRUE(prog != NULL);
    std::string dump;
    prog->BuildEntireDFA(Prog::kLongestMatch, [&](const int* next, bool match) {
      ASSERT_TRUE(next != NULL);
      if (!dump.empty())
        dump += " ";
      dump += match ? "[[" : "[";
      for (int b = 0; b < prog->bytemap_range() + 1; b++)
        dump += StringPrintf("%d,", next[b]);
      dump.pop_back();
      dump += match ? "]]" : "]";
    });
    if (dump != t.dump) {
      LOG(ERROR) << t.regexp << " bytemap:\n" << prog->DumpByteMap();
      LOG(ERROR) << t.regexp << " dump:\ngot " << dump << "\nwant " << t.dump;
      nfail++;
    }
    delete prog;
    re->Decref();
  }
  EXPECT_EQ(nfail, 0);
}

}  // namespace re2
