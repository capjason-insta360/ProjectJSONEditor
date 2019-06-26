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

package com.insta360.themes.arashi.skins.halo
{
	
import flash.display.Graphics;
import flash.filters.DropShadowFilter;

import mx.skins.halo.ToolTipBorder;

/**
 * 	Customize the toolTip.  Add support for a border.
 */
public class ToolTipBorder extends mx.skins.halo.ToolTipBorder
{

	//--------------------------------------------------------------------------
	//
	//  Overridden methods
	//
	//--------------------------------------------------------------------------
	
	/**
	 *  @private
	 */
	override protected function updateDisplayList(w:Number, h:Number):void
	{	
		if (getStyle("borderStyle") == "toolTip")
		{
			var g:Graphics = graphics;
			g.clear();
			
			// face
			g.lineStyle(1, getStyle("borderColor"), 1, true);
			g.beginFill(getStyle("backgroundColor"), 1);
			g.drawRect(0, 0, w - 3, h - 3); 
			g.endFill();
			
			var filter:DropShadowFilter = new DropShadowFilter();
			filter.alpha = 0.35;
			
			filters = [filter];
			
			return;
		}
		
		super.updateDisplayList(w, h);
	}
	
}

}