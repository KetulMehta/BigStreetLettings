using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BAL
{
   public class prop
    {
        #region Common
        private String _Flag;
        public String Flag
        {
            get { return _Flag; }
            set { _Flag = value; }
        }

        private Int64 _CreateUser;
        public Int64 CreateUser
        {
            get { return _CreateUser; }
            set { _CreateUser = value; }
        }

        private DateTime _CreateDate;
        public DateTime CreateDate
        {
            get { return _CreateDate; }
            set { _CreateDate = value; }
        }

        private DateTime _UpdateDate;
        public DateTime UpdateDate
        {
            get { return _UpdateDate; }
            set { _UpdateDate = value; }
        }
        #endregion

        #region Country
        private Int64 _CountryId;
        public Int64 CountryId
        {
            get { return _CountryId; }
            set { _CountryId = value; }
        }

        private String _CountryName;
        public String CountryName
        {
            get { return _CountryName; }
            set { _CountryName = value; }
        }
        #endregion


        #region State
        private Int64 _StateId;
        public Int64 StateId
        {
            get { return _StateId; }
            set { _StateId = value; }
        }

        private String _StateName;
        public String StateName
        {
            get { return _StateName; }
            set { _StateName = value; }
        }
        #endregion


        #region City
        private Int64 _CityId;
        public Int64 CityId
        {
            get { return _CityId; }
            set { _CityId = value; }
        }

        private String _CityName;
        public String CityName
        {
            get { return _CityName; }
            set { _CityName = value; }
        }
        #endregion

        #region Slider
        //private Int64 _SliderId;
        //public Int64 SliderId
        //{
        //    get { return _SliderId; }
        //    set { _SliderId = value; }
        //}

        private String _Title;
        public String Title
        {
            get { return _Title; }
            set { _Title = value; }
        }

        private String _SliderImage;
        public String SliderImage
        {
            get { return _SliderImage; }
            set { _SliderImage = value; }
        }

        private String _Description;
        public String Description
        {
            get { return _Description; }
            set { _Description = value; }
        }
        #endregion


        #region Testimonial
        private Int64 _TestimonialId;
        public Int64 TestimonialId
        {
            get { return _TestimonialId; }
            set { _TestimonialId = value; }
        }

        private String _Name;
        public String Name
        {
            get { return _Name; }
            set { _Name = value; }
        }

        private String _Image;
        public String Image
        {
            get { return _Image; }
            set { _Image = value; }
        }

        private String _Comment;
        public String Comment
        {
            get { return _Comment; }
            set { _Comment = value; }
        }
        #endregion

        #region CompanyProfile

        private String _CompanyName;
        public String CompanyName
        {
            get { return _CompanyName; }
            set { _CompanyName = value; }
        }

        private String _CompanyLogo;
        public String CompanyLogo
        {
            get { return _CompanyLogo; }
            set { _CompanyLogo = value; }
        }

        private String _AddressLine1;
        public String AddressLine1
        {
            get { return _AddressLine1; }
            set { _AddressLine1 = value; }
        }

        private String _AddressLine2;
        public String AddressLine2
        {
            get { return _AddressLine2; }
            set { _AddressLine2 = value; }
        }

        private String _City;
        public String City
        {
            get { return _City; }
            set { _City = value; }
        }

        private String _State;
        public String State
        {
            get { return _State; }
            set { _State = value; }
        }

        private String _Country;
        public String Country
        {
            get { return _Country; }
            set { _Country = value; }
        }

        private String _EmailId;
        public String EmailId
        {
            get { return _EmailId; }
            set { _EmailId = value; }
        }

        private Int64 _MobileNumber;
        public Int64 MobileNumber
        {
            get { return _MobileNumber; }
            set { _MobileNumber = value; }
        }
        #endregion


        #region Contact
        private Int64 _ContactId;
        public Int64 ContactId
        {
            get { return _ContactId; }
            set { _ContactId = value; }
        }

     
        private Int64 _Fax;
        public Int64 Fax
        {
            get { return _Fax; }
            set { _Fax = value; }
        }
        private String _Email;
        public String Email
        {
            get { return _Email; }
            set { _Email = value; }
        }

        private Int64 _PhoneNumber;
        public Int64 PhoneNumber
        {
            get { return _PhoneNumber; }
            set { _PhoneNumber = value; }
        }

        private String _Website;
        public String Website
        {
            get { return _Website; }
            set { _Website = value; }
        }

        private String _Password;
        public String Password
        {
            get { return _Password; }
            set { _Password = value; }
        }

        private String _MapLink;
        public String MapLink
        {
            get { return _MapLink; }
            set { _MapLink = value; }
        }
        #endregion

        #region Area
        private Int64 _AreaId;
        public Int64 AreaId
        {
            get { return _AreaId; }
            set { _AreaId = value; }
        }

        private String _AreaTitle;
        public String AreaTitle
        {
            get { return _AreaTitle; }
            set { _AreaTitle = value; }
        }

        private Int64 _PinCode;
        public Int64 PinCode
        {
            get { return _PinCode; }
            set { _PinCode = value; }
        }
        #endregion

        #region PropertyType


        private String _PropertyTitle;
        public String PropertyTitle
        {
            get { return _PropertyTitle; }
            set { _PropertyTitle = value; }
        }

        private String _PropertyType;
        public String PropertyType
        {
            get { return _PropertyType; }
            set { _PropertyType = value; }
        }
        #endregion

        #region RentType


        private String _RentTitle;
        public String RentTitle
        {
            get { return _RentTitle; }
            set { _RentTitle = value; }
        }
        #endregion

        private Int64 _PropertyId;
        public Int64 PropertyId
        {
            get { return _PropertyId; }
            set { _PropertyId = value; }
        }


        private Int64 _rtsqft;
        public Int64 rtsqft
        {
            get { return _rtsqft; }
            set { _rtsqft = value; }
        }


        private Int64 _totsqft;
        public Int64 totsqft
        {
            get { return _totsqft; }
            set { _totsqft = value; }
        }


        private Int64 _totrate;
        public Int64 totrate
        {
            get { return _totrate; }
            set { _totrate = value; }
        }
        private String _Area;
        public String Area
        {
            get { return _Area; }
            set { _Area = value; }
        }

        private String _PropSpecification;
        public String PropSpecification
        {
            get { return _PropSpecification; }
            set { _PropSpecification = value; }
        }

        private String _OldPassword;
        public String OldPassword
        {
            get { return _OldPassword; }
            set { _OldPassword = value; }
        }

        private String _NewPassword;
        public String NewPassword
        {
            get { return _NewPassword; }
            set { _NewPassword = value; }
        }

        private String _PropertyName;
        public String PropertyName
        {
            get { return _PropertyName; }
            set { _PropertyName = value; }
        }

        private String _Address;
        public String Address
        {
            get { return _Address; }
            set { _Address = value; }
        }

        private String _Details;
        public String Details
        {
            get { return _Details; }
            set { _Details = value; }
        }

        private Int64 _Price;
        public Int64 Price
        {
            get { return _Price; }
            set { _Price = value; }
        }

        private Int64 _PropertyArea;
        public Int64 PropertyArea
        {
            get { return _PropertyArea; }
            set { _PropertyArea = value; }
        }

        private Int64 _Bedroom;
        public Int64 Bedroom
        {
            get { return _Bedroom; }
            set { _Bedroom = value; }
        }

        private Int64 _Bathroom;
        public Int64 Bathroom
        {
            get { return _Bathroom; }
            set { _Bathroom = value; }
        }

    }
}

