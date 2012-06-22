using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using ImageHashing;

namespace ImageHashingTest
{
    class Program
    {
        public static string diff_1 = "diff1.jpg";
        public static string same_1 = "same1.jpg";  // My original test has same_1 and same_2 as the same image
        public static string same_2 = "same2.jpg";  // at different resolutions, so similarity = 100%

        static void Main(string[] args)
        {
            Console.WriteLine(String.Format("Similarity, diff-same: {0}",
                                            ImageHashing.ImageHashing.Similarity(diff_1, same_1)));
            Console.WriteLine(String.Format("Similarity, same-same: {0}",
                                            ImageHashing.ImageHashing.Similarity(same_1, same_2)));
            return;
        }
    }
}
