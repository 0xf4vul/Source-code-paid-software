.class public Lcom/piriform/ccleaner/ui/view/LastCleanedView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/piriform/ccleaner/ui/view/LastCleanedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    invoke-virtual {p0, v2}, Lcom/piriform/ccleaner/ui/view/LastCleanedView;->setOrientation(I)V

    .line 40
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/ui/view/LastCleanedView;->setGravity(I)V

    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030090

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1016
    const v0, 0x7f10015e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 43
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/view/LastCleanedView;->a:Landroid/widget/TextView;

    .line 2016
    const v0, 0x7f10015d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 44
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/view/LastCleanedView;->b:Landroid/widget/ImageView;

    .line 45
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;I)Landroid/text/Spannable;
    .locals 5

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 77
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    .line 78
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 79
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v4, 0x12

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 80
    return-object v2
.end method


# virtual methods
.method public setTopPadding(I)V
    .locals 3

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/view/LastCleanedView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/view/LastCleanedView;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/view/LastCleanedView;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/piriform/ccleaner/ui/view/LastCleanedView;->setPadding(IIII)V

    .line 73
    return-void
.end method
