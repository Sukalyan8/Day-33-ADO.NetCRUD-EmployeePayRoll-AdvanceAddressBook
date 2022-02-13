using AdvanceAddressBookADO.Net;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using NUnit.Framework;

namespace AddressBookTests
{
    [TestClass]
    public class UnitTests
    {
        [SetUp]
        public void Setup()
        {
        }

        [Test]
        public void GivenAddressBookDB_WhenRetrieved_ReturnsNumOfContacts()
        {
            ContactOperations cops = new ContactOperations();
            int result = cops.GetContactDetails();
            int expect = 7;
            Microsoft.VisualStudio.TestTools.UnitTesting.Assert.AreEqual(result, expect);
        }
    }
}