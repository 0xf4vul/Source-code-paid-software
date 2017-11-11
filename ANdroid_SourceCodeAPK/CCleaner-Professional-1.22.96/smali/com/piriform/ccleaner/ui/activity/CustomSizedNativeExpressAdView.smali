.class public Lcom/piriform/ccleaner/ui/activity/CustomSizedNativeExpressAdView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/android/gms/ads/NativeExpressAdView;

.field private b:Lcom/google/android/gms/ads/d;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/piriform/ccleaner/ui/activity/CustomSizedNativeExpressAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1045
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/activity/CustomSizedNativeExpressAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 1046
    sget-object v1, Lcom/piriform/ccleaner/h$a;->CustomSizedNativeExpressAdView:[I

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1069
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1070
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/piriform/ccleaner/ui/activity/CustomSizedNativeExpressAdView;->c:Ljava/lang/String;

    .line 1048
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1075
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/activity/CustomSizedNativeExpressAdView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1076
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float v0, v1, v0

    float-to-int v0, v0

    .line 1077
    new-instance v1, Lcom/google/android/gms/ads/d;

    add-int/lit8 v0, v0, -0x12

    const/16 v2, 0x50

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/ads/d;-><init>(II)V

    iput-object v1, p0, Lcom/piriform/ccleaner/ui/activity/CustomSizedNativeExpressAdView;->b:Lcom/google/android/gms/ads/d;

    .line 42
    return-void
.end method


# virtual methods
.method public getNativeAdvert()Lcom/google/android/gms/ads/NativeExpressAdView;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/CustomSizedNativeExpressAdView;->a:Lcom/google/android/gms/ads/NativeExpressAdView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 53
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 54
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/activity/CustomSizedNativeExpressAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f030092

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 56
    new-instance v0, Lcom/google/android/gms/ads/NativeExpressAdView;

    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/activity/CustomSizedNativeExpressAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/NativeExpressAdView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/activity/CustomSizedNativeExpressAdView;->a:Lcom/google/android/gms/ads/NativeExpressAdView;

    .line 57
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/CustomSizedNativeExpressAdView;->a:Lcom/google/android/gms/ads/NativeExpressAdView;

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/activity/CustomSizedNativeExpressAdView;->b:Lcom/google/android/gms/ads/d;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/NativeExpressAdView;->setAdSize(Lcom/google/android/gms/ads/d;)V

    .line 58
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/CustomSizedNativeExpressAdView;->a:Lcom/google/android/gms/ads/NativeExpressAdView;

    const v1, 0x7f100004

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/NativeExpressAdView;->setId(I)V

    .line 59
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/CustomSizedNativeExpressAdView;->a:Lcom/google/android/gms/ads/NativeExpressAdView;

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/activity/CustomSizedNativeExpressAdView;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/NativeExpressAdView;->setAdUnitId(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/CustomSizedNativeExpressAdView;->a:Lcom/google/android/gms/ads/NativeExpressAdView;

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/ui/activity/CustomSizedNativeExpressAdView;->addView(Landroid/view/View;)V

    .line 62
    return-void
.end method
