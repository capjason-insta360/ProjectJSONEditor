////////////////////////////////////////////////////////////////////////////////
//	
//	Copyright 2014 Ardisia Labs LLC. All Rights Reserved.
//
//	This file is licensed under the Ardisia Component Library License. 
//
//	Only license holders are entitled to use this file subject to the  
//	conditions of the license. All other uses are expressly forbidden. Visit 
//	http://www.ardisialabs.com to view and purchase a license.
//
//	Apache Flex's source code notices are reproduced below.
//
// 	- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
//
//  Licensed to the Apache Software Foundation (ASF) under one or more
//  contributor license agreements.  See the NOTICE file distributed with
//  this work for additional information regarding copyright ownership.
//  The ASF licenses this file to You under the Apache License, Version 2.0
//  (the "License"); you may not use this file except in compliance with
//  the License.  You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//
////////////////////////////////////////////////////////////////////////////////

package com.insta360.themes.arashi.itemRenderers
{
	
	import flash.text.TextFormat;
	
	import mx.core.mx_internal;
	
	import spark.skins.spark.DefaultGridItemRenderer;
	
	use namespace mx_internal;
	
	/**
	 * Custom grid item renderer.
	 * 
	 * <p>Supports changing the text color on selection.</p>
	 */
	public class DefaultGridItemRendererSpark extends DefaultGridItemRenderer
	{
		
		//--------------------------------------------------------------------------
		//
		//  Overridden properties
		//
		//--------------------------------------------------------------------------
		
		//----------------------------------
		//  selected
		//----------------------------------
		
		override public function set selected(value:Boolean):void
		{
			if (value != selected)
			{
				if (!selected)
				{
					
					// change the color, but do not change the style... changing
					// the color style can have unintended consequences and mess up
					// anything that inherits styles from this component; for 
					// example, a GridEditors's text will inherit the "color" style
					// from this component, and if the style is set to white, the
					// GridEditor will have white text against a white background
					var textFormat:TextFormat = getTextFormat();
					textFormat.color = 0xFFFFFF;
					
					setTextFormat(textFormat);
				}
				else
				{
					textFormat = getTextFormat();
					textFormat.color = getStyle("color");
					setTextFormat(textFormat);
				}	
			}
			
			super.selected = value;	
		}
		
	}
	
}

