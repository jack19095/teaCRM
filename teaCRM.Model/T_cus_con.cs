//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Collections.Specialized;
using System.ComponentModel.DataAnnotations;

namespace teaCRM.Model
{
    public partial class T_cus_con
    {
        #region Primitive Properties
    	[Required]
    	public virtual int id
        {
            get;
            set;
        }
    	[Required]
    	public virtual int cus_id
        {
            get;
            set;
        }
    	[Required]
        [MaxLength(200)]
    	public virtual string con_name
        {
            get;
            set;
        }
    	//[Required]
        [MaxLength(50)]
    	public virtual string con_tel
        {
            get;
            set;
        }
    	//[Required]
        [MaxLength(40)]
    	public virtual string con_qq
        {
            get;
            set;
        }
    	//[Required]
        [MaxLength(100)]
    	public virtual string con_email
        {
            get;
            set;
        }
    	//[Required]
    	public virtual Nullable<System.DateTime> con_bir
        {
            get;
            set;
        }
    	//[Required]
    	public virtual string con_note
        {
            get;
            set;
        }
    	[Required]
    	public virtual int con_is_main
        {
            get;
            set;
        }
    	[Required]
    	public virtual int user_id
        {
            get;
            set;
        }

        #endregion
    }
}