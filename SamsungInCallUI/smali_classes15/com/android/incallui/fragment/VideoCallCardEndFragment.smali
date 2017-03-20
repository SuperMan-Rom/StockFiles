.class public Lcom/android/incallui/fragment/VideoCallCardEndFragment;
.super Lcom/android/incallui/fragment/VideoCallCardBaseFragment;
.source "VideoCallCardEndFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoCallCardEndFragment"


# instance fields
.field public mHeightPixels:I

.field mIsLandscape:Z

.field public mWidthPixels:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;-><init>()V

    .line 72
    iput v0, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mWidthPixels:I

    .line 73
    iput v0, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mHeightPixels:I

    .line 74
    iput-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mIsLandscape:Z

    return-void
.end method

.method private hasJanskyInfo()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 326
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->getView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    .line 331
    :cond_0
    :goto_0
    return v1

    .line 327
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo;->getInstance(Landroid/content/Context;)Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo;

    move-result-object v2

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->getLineMSISDN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo;->getJanskyInfo(Ljava/lang/String;)Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;

    move-result-object v0

    .line 328
    .local v0, "entry":Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;->janskyMultiLineName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 329
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private relayoutNameNumberTextView(Lcom/android/incallui/Call;)V
    .locals 13
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const v12, 0x7f0a0287

    const v11, 0x7f0a011c

    const/16 v10, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 465
    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPrimaryName:Landroid/widget/TextView;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPhoneNumber:Landroid/widget/TextView;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mNumberLabel:Landroid/widget/TextView;

    if-nez v7, :cond_1

    .line 502
    :cond_0
    :goto_0
    return-void

    .line 467
    :cond_1
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v0

    .line 468
    .local v0, "isMobileKeyboardCovered":Z
    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_6

    move v3, v5

    .line 469
    .local v3, "isPhotoVisible":Z
    :goto_1
    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_7

    move v2, v5

    .line 470
    .local v2, "isPhotoInvisible":Z
    :goto_2
    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-ne v7, v10, :cond_8

    :cond_2
    move v1, v5

    .line 472
    .local v1, "isPhotoGone":Z
    :goto_3
    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a00b7

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 474
    const/4 v4, 0x0

    .line 476
    .local v4, "nameTextSize":F
    invoke-static {p1}, Lcom/android/incallui/util/ImsCommonUtils;->isIMSConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 477
    iget-object v5, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->setPrimaryNameSize(Ljava/lang/String;F)F

    move-result v4

    .line 493
    :cond_3
    :goto_4
    if-eqz v0, :cond_5

    .line 494
    iget-object v5, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0290

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->setPrimaryNameSize(Ljava/lang/String;F)F

    move-result v4

    .line 495
    iget-object v5, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_5

    .line 496
    :cond_4
    iget-object v5, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 497
    iget-object v5, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 498
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0a032f

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 501
    :cond_5
    iget-object v5, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v5, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_0

    .end local v1    # "isPhotoGone":Z
    .end local v2    # "isPhotoInvisible":Z
    .end local v3    # "isPhotoVisible":Z
    .end local v4    # "nameTextSize":F
    :cond_6
    move v3, v6

    .line 468
    goto/16 :goto_1

    .restart local v3    # "isPhotoVisible":Z
    :cond_7
    move v2, v6

    .line 469
    goto/16 :goto_2

    .restart local v2    # "isPhotoInvisible":Z
    :cond_8
    move v1, v6

    .line 470
    goto/16 :goto_3

    .line 478
    .restart local v1    # "isPhotoGone":Z
    .restart local v4    # "nameTextSize":F
    :cond_9
    if-nez v3, :cond_a

    if-eqz v2, :cond_b

    .line 479
    :cond_a
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0a008d

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    goto :goto_4

    .line 480
    :cond_b
    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallNumberAndLabel:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v10, :cond_c

    .line 481
    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    invoke-virtual {p0, v7, v8}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->setPrimaryNameSize(Ljava/lang/String;F)F

    move-result v4

    .line 482
    if-eqz v1, :cond_3

    .line 483
    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mChnFeatureView:Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mChnFeatureView:Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

    invoke-virtual {v7}, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->isRichScreen()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 484
    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPhoneNumber:Landroid/widget/TextView;

    .line 485
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a055a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    .line 486
    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->getDensity()F

    move-result v9

    div-float/2addr v8, v9

    .line 487
    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->setTextSizeUntilLargeSize()F

    move-result v9

    mul-float/2addr v8, v9

    .line 484
    invoke-virtual {v7, v5, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_4

    .line 491
    :cond_c
    iget-object v5, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0088

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->setPrimaryNameSize(Ljava/lang/String;F)F

    move-result v4

    goto/16 :goto_4
.end method

.method private showCallInfoContainer(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallInfoContainer:Landroid/view/View;

    if-nez v0, :cond_0

    .line 315
    const-string v0, "VideoCallCardEndFragment"

    const-string v1, "showCallInfoContainer container is null"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :goto_0
    return-void

    .line 318
    :cond_0
    if-eqz p1, :cond_1

    .line 319
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallInfoContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 321
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallInfoContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateMultiWindowLayout()V
    .locals 6

    .prologue
    const v5, 0x7f0a057b

    .line 444
    const-string v4, "updateMultiWindowLayout"

    invoke-static {v4}, Lcom/android/incallui/service/vt/VideoCallLog;->callcard(Ljava/lang/String;)V

    .line 445
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallStateContainer:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mSecondaryPanel:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    if-nez v4, :cond_1

    .line 462
    :cond_0
    :goto_0
    return-void

    .line 448
    :cond_1
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallStateContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 449
    .local v0, "callStateParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mSecondaryPanel:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 450
    .local v3, "secondaryPanelParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 451
    .local v2, "secondaryCardParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 453
    .local v1, "indicatorAreaParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 454
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 455
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 456
    const/4 v4, 0x0

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 458
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallStateContainer:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 459
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mSecondaryPanel:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 460
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 461
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private updatePrimaryBanner(Lcom/android/incallui/Call;)V
    .locals 4
    .param p1, "primaryCall"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v0, 0x0

    .line 369
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    .line 371
    .local v1, "state":I
    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->updateLayoutForCallState(I)V

    .line 373
    sget-boolean v2, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_PRIMARY_VIDEO_TYPE_ICON:Z

    if-eqz v2, :cond_0

    .line 374
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->updateVideoTypeIcon(Lcom/android/incallui/Call;)V

    .line 376
    :cond_0
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CAN_GSM()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 377
    invoke-static {}, Lcom/android/incallui/service/SecModifyCallProcessor;->getInstance()Lcom/android/incallui/service/SecModifyCallProcessor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/service/SecModifyCallProcessor;->checkAndUpdateModifyDummyState()V

    .line 380
    :cond_1
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isJpnUX()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 381
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isHideCallerInfo()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 382
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallNumberAndLabel:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 388
    :cond_2
    :goto_0
    const-string v2, "jansky_info_for_tmo"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 389
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->updateJanskyInfo()V

    .line 392
    :cond_3
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->isFullscreen()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->updateFullscreenMode(Z)V

    .line 394
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->isMultipartyCall()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isModifyProgressing()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->isFullscreen()Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v0, 0x1

    .line 395
    .local v0, "showSecondary":Z
    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->showSecondaryContainer(Z)V

    .line 397
    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->relayoutNameNumberTextView(Lcom/android/incallui/Call;)V

    .line 398
    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->updateTextColor(I)V

    .line 399
    return-void

    .line 383
    .end local v0    # "showSecondary":Z
    :cond_5
    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    .line 384
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallNumberAndLabel:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 263
    const/4 v0, 0x0

    return v0
.end method

.method public isInExceptionArea(II)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 290
    const/4 v0, 0x0

    return v0
.end method

.method public isMenuShowing()Z
    .locals 1

    .prologue
    .line 295
    const/4 v0, 0x0

    return v0
.end method

.method public manageAnswerMemoRecord(Z)V
    .locals 0
    .param p1, "isActiveCall"    # Z

    .prologue
    .line 301
    return-void
.end method

.method public manageMultiTouchStub(Z)V
    .locals 0
    .param p1, "isIncoming"    # Z

    .prologue
    .line 306
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 148
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VideoCallCardExtendFragment - onConfigurationChanged : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->window(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 152
    .local v0, "primary":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    .line 154
    .local v1, "state":I
    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->updateLayoutForCallState(I)V

    .line 156
    .end local v1    # "state":I
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 79
    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 81
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallUtils;->getDisplayMetrics(Landroid/app/Activity;)Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 82
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    if-eqz v0, :cond_0

    .line 83
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mWidthPixels:I

    .line 84
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mHeightPixels:I

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mIsLandscape:Z

    .line 87
    const v1, 0x7f04011e

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    return-object v1

    :cond_1
    move v1, v2

    .line 86
    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 143
    invoke-super {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->onDestroyView()V

    .line 144
    return-void
.end method

.method public onDialpadVisiblityChange()V
    .locals 0

    .prologue
    .line 259
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 92
    invoke-super {p0, p1, p2}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 94
    const v1, 0x7f100246

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    .line 96
    const v1, 0x7f100198

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPhoneNumber:Landroid/widget/TextView;

    .line 97
    const v1, 0x7f1000e9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPrimaryName:Landroid/widget/TextView;

    .line 98
    const v1, 0x7f100334

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    .line 99
    const v1, 0x7f10010e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mNumberLabel:Landroid/widget/TextView;

    .line 100
    const v1, 0x7f1001da

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPhotoContainer:Landroid/view/View;

    .line 101
    const v1, 0x7f1000a5

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPhoto:Landroid/widget/ImageView;

    .line 102
    const v1, 0x7f100191

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallStateIcon:Landroid/widget/ImageView;

    .line 103
    const v1, 0x7f100193

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallStateLabel:Landroid/widget/TextView;

    .line 104
    const v1, 0x7f100197

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallNumberAndLabel:Landroid/view/View;

    .line 106
    const v1, 0x7f100199

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mElapsedTime:Landroid/widget/TextView;

    .line 107
    const v1, 0x7f1000a2

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    .line 108
    const v1, 0x7f10018c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    .line 109
    const v1, 0x7f1001d7

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallStateContainer:Landroid/view/View;

    .line 110
    const v1, 0x7f100337

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mMoreButtonContainer:Landroid/view/View;

    .line 111
    const v1, 0x7f100248

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallInfoContainer:Landroid/view/View;

    .line 113
    const v1, 0x7f100338

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mNameContainer:Landroid/view/View;

    .line 115
    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_PRIMARY_VIDEO_TYPE_ICON:Z

    if-eqz v1, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->inflateVideoTypeIconLayout()V

    .line 119
    :cond_0
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->updateMultiWindowLayout()V

    .line 124
    :cond_1
    const-string v1, "ecid_enable"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "feature_vzw"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 125
    const v1, 0x7f100320

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCityId:Landroid/widget/TextView;

    .line 126
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCityId:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0136

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 130
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    .line 131
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    .line 132
    :cond_3
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    .line 134
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 135
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_5

    .line 136
    :cond_4
    invoke-direct {p0, v4}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->showCallInfoContainer(Z)V

    .line 137
    invoke-virtual {p0, v4}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->setPrimaryVisible(Z)V

    .line 139
    :cond_5
    return-void
.end method

.method public setCallState(IIILandroid/telecom/DisconnectCause;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZZZ)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "videoState"    # I
    .param p3, "sessionModificationState"    # I
    .param p4, "disconnectCause"    # Landroid/telecom/DisconnectCause;
    .param p5, "connectionLabel"    # Ljava/lang/String;
    .param p6, "connectionIcon"    # Landroid/graphics/drawable/Drawable;
    .param p7, "gatewayNumber"    # Ljava/lang/String;
    .param p8, "isWifi"    # Z
    .param p9, "isConference"    # Z
    .param p10, "isWorkCall"    # Z

    .prologue
    .line 175
    invoke-super/range {p0 .. p10}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->setCallState(IIILandroid/telecom/DisconnectCause;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZZZ)V

    .line 177
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 179
    .local v0, "primaryCall":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 180
    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->updatePrimaryBanner(Lcom/android/incallui/Call;)V

    .line 182
    :cond_0
    return-void
.end method

.method public setPrimary(Ljava/lang/String;Ljava/lang/String;ZZZLcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "nameIsNumber"    # Z
    .param p4, "isConference"    # Z
    .param p5, "canManageConference"    # Z
    .param p6, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p7, "isWorkCall"    # Z

    .prologue
    .line 160
    invoke-super/range {p0 .. p7}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->setPrimary(Ljava/lang/String;Ljava/lang/String;ZZZLcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    .line 161
    return-void
.end method

.method public setPrimaryNameSize(Ljava/lang/String;F)F
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "textSize"    # F

    .prologue
    .line 187
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 188
    .local v1, "mPaint":Landroid/graphics/Paint;
    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 190
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-int v4, v5

    .line 191
    .local v4, "mTextWidth":I
    move v2, p2

    .line 192
    .local v2, "mTextSize":F
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a008d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 194
    .local v0, "mMinTextSize":F
    :cond_0
    iget-object v5, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMaxWidth()I

    move-result v5

    if-le v4, v5, :cond_1

    .line 195
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 196
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-int v4, v5

    .line 197
    const/high16 v5, 0x40000000    # 2.0f

    sub-float/2addr v2, v5

    .line 198
    cmpg-float v5, v2, v0

    if-gez v5, :cond_0

    move v3, v2

    .line 202
    .end local v2    # "mTextSize":F
    .local v3, "mTextSize":F
    :goto_0
    return v3

    .end local v3    # "mTextSize":F
    .restart local v2    # "mTextSize":F
    :cond_1
    move v3, v2

    .end local v2    # "mTextSize":F
    .restart local v3    # "mTextSize":F
    goto :goto_0
.end method

.method public setPrimaryVisible(Z)V
    .locals 5
    .param p1, "visible"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 208
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 209
    .local v0, "primaryCall":Lcom/android/incallui/Call;
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallInfoContainer:Landroid/view/View;

    if-nez v1, :cond_0

    .line 210
    const-string v1, "VideoCallCardEndFragment"

    const-string v2, "setPrimaryVisible : banner is null"

    invoke-static {v1, v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 223
    :goto_0
    return-void

    .line 213
    :cond_0
    if-eqz p1, :cond_3

    .line 214
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    .line 215
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->showCallInfoContainer(Z)V

    .line 222
    :goto_1
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/incallui/UiAdapter;->updateSwitchButtonLayout(Z)V

    goto :goto_0

    .line 217
    :cond_2
    invoke-direct {p0, v4}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->showCallInfoContainer(Z)V

    goto :goto_1

    .line 220
    :cond_3
    invoke-direct {p0, v3}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->showCallInfoContainer(Z)V

    goto :goto_1
.end method

.method public setProfileContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 269
    return-void
.end method

.method public setProfileForwardingContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 274
    return-void
.end method

.method public setSecondary(ZLjava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZLcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 0
    .param p1, "show"    # Z
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "nameIsNumber"    # Z
    .param p4, "providerLabel"    # Ljava/lang/String;
    .param p5, "providerIcon"    # Landroid/graphics/drawable/Drawable;
    .param p6, "isConference"    # Z
    .param p7, "canManageConference"    # Z
    .param p8, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 227
    invoke-super/range {p0 .. p8}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->setSecondary(ZLjava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZLcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    .line 228
    return-void
.end method

.method public setSecondaryInfoVisible(Z)V
    .locals 5
    .param p1, "visible"    # Z

    .prologue
    const/4 v3, 0x0

    .line 403
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/CallCardPresenter;->getSecondaryCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 404
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->showSecondaryContainer(Z)V

    .line 405
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mManageStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_1

    .line 406
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 407
    .local v0, "call":Lcom/android/incallui/Call;
    const/4 v1, 0x0

    .line 408
    .local v1, "canManageConference":Z
    if-eqz v0, :cond_0

    .line 409
    const/16 v2, 0x80

    invoke-virtual {v0, v2}, Lcom/android/incallui/Call;->can(I)Z

    move-result v1

    .line 411
    :cond_0
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mManageStub:Landroid/view/ViewStub;

    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {v4, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 414
    .end local v0    # "call":Lcom/android/incallui/Call;
    .end local v1    # "canManageConference":Z
    :cond_1
    return-void

    .line 411
    .restart local v0    # "call":Lcom/android/incallui/Call;
    .restart local v1    # "canManageConference":Z
    :cond_2
    const/16 v2, 0x8

    goto :goto_0
.end method

.method public setViewStatePostSplit()V
    .locals 0

    .prologue
    .line 279
    return-void
.end method

.method public showCallCardIndicatorArea(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 284
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 286
    :cond_0
    return-void

    .line 284
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showManageConferenceCallButton(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 255
    return-void
.end method

.method protected showSecondaryContainer(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    const/4 v2, 0x0

    .line 232
    if-eqz p1, :cond_4

    move v1, v2

    .line 233
    .local v1, "visibility":I
    :goto_0
    const/4 v0, 0x0

    .line 234
    .local v0, "changeVisibility":Z
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mSecondaryPanel:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 235
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mSecondaryPanel:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v1, :cond_5

    const/4 v0, 0x1

    .line 238
    :cond_0
    :goto_1
    if-eqz v0, :cond_3

    .line 239
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mSecondaryDiver:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 240
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mSecondaryDiver:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 242
    :cond_1
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 243
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 245
    :cond_2
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mSecondaryPanel:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 246
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mSecondaryPanel:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 250
    :cond_3
    return-void

    .line 232
    .end local v0    # "changeVisibility":Z
    .end local v1    # "visibility":I
    :cond_4
    const/16 v1, 0x8

    goto :goto_0

    .restart local v0    # "changeVisibility":Z
    .restart local v1    # "visibility":I
    :cond_5
    move v0, v2

    .line 235
    goto :goto_1
.end method

.method public updateCallCard(Lcom/android/incallui/Call;)V
    .locals 0
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 311
    return-void
.end method

.method protected updateLayoutForCallState(I)V
    .locals 6
    .param p1, "state"    # I

    .prologue
    .line 336
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallStateContainer:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallInfoContainer:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mNameContainer:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    if-nez v4, :cond_1

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 339
    :cond_1
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallInfoContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 340
    .local v1, "callInfoParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallStateContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 341
    .local v2, "callStateParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 343
    .local v0, "callCardParams":Landroid/widget/RelativeLayout$LayoutParams;
    sparse-switch p1, :sswitch_data_0

    .line 351
    :sswitch_0
    packed-switch p1, :pswitch_data_0

    .line 363
    :goto_1
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallInfoContainer:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 364
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallStateContainer:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 365
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 354
    :pswitch_0
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 355
    .local v3, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0x11

    const v5, 0x7f100199

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 356
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00b9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 357
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 343
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x8 -> :sswitch_0
    .end sparse-switch

    .line 351
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected updatePrimaryVisibleForCallState(I)V
    .locals 6
    .param p1, "state"    # I

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v1, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 418
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->updatePrimaryVisibleForCallState(I)V

    .line 420
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isUsaUX()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 421
    if-ne p1, v4, :cond_2

    .line 422
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_ATT()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallInfoContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallInfoContainer:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 425
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallInfoContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 428
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->setPrimaryVisible(Z)V

    .line 441
    :cond_1
    :goto_0
    return-void

    .line 429
    :cond_2
    const/16 v0, 0x9

    if-eq v0, p1, :cond_3

    const/16 v0, 0xa

    if-ne v0, p1, :cond_4

    .line 430
    :cond_3
    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/incallui/VideoBanner;->setVideoCallBanner(I)V

    goto :goto_0

    .line 431
    :cond_4
    if-eq p1, v1, :cond_5

    if-ne p1, v5, :cond_1

    .line 432
    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->setPrimaryVisible(Z)V

    goto :goto_0

    .line 435
    :cond_6
    if-ne p1, v4, :cond_7

    .line 436
    invoke-virtual {p0, v3}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->setPrimaryVisible(Z)V

    goto :goto_0

    .line 437
    :cond_7
    if-eq p1, v1, :cond_8

    if-ne p1, v5, :cond_1

    .line 438
    :cond_8
    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->setPrimaryVisible(Z)V

    goto :goto_0
.end method