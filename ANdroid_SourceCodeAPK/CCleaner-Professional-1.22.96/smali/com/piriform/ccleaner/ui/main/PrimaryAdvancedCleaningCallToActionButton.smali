.class public Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field a:Lcom/piriform/ccleaner/cleaning/advanced/b;

.field b:Lcom/piriform/ccleaner/b/a;

.field c:Landroid/widget/Button;

.field final d:Landroid/view/View$OnClickListener;

.field final e:Landroid/view/View$OnClickListener;

.field final f:Landroid/view/View$OnClickListener;

.field private g:Landroid/widget/ProgressBar;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 44
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    new-instance v0, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton$1;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton$1;-><init>(Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;->d:Landroid/view/View$OnClickListener;

    .line 95
    new-instance v0, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton$2;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton$2;-><init>(Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;->e:Landroid/view/View$OnClickListener;

    .line 109
    new-instance v0, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton$3;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton$3;-><init>(Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;->f:Landroid/view/View$OnClickListener;

    .line 53
    return-void
.end method

.method static synthetic a(Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;->c:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic b(Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;->g:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic c(Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;)V
    .locals 4

    .prologue
    .line 1143
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1144
    new-instance v1, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton$5;

    invoke-direct {v1, p0}, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton$5;-><init>(Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 27
    return-void
.end method

.method static synthetic d(Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;)V
    .locals 2

    .prologue
    .line 2119
    new-instance v0, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton$4;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton$4;-><init>(Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;)V

    .line 2126
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/piriform/ccleaner/cleaning/advanced/ak;->from(Landroid/content/Context;Lcom/piriform/ccleaner/cleaning/advanced/ak$a;)Lcom/piriform/ccleaner/cleaning/advanced/ak;

    move-result-object v0

    .line 2127
    invoke-virtual {v0}, Lcom/piriform/ccleaner/cleaning/advanced/ak;->show()V

    .line 27
    return-void
.end method

.method static synthetic e(Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;->h:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic f(Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;)Landroid/view/View;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;->i:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method final a()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 136
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;->c:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;->i:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 140
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 57
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 59
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    invoke-static {}, Lcom/piriform/ccleaner/CCleanerApplication;->a()Lcom/piriform/ccleaner/j/bl;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/piriform/ccleaner/j/bl;->a(Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;)V

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03007c

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 65
    const v0, 0x7f10013c

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;->c:Landroid/widget/Button;

    .line 66
    const v0, 0x7f10013d

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;->g:Landroid/widget/ProgressBar;

    .line 67
    const v0, 0x7f10013e

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;->h:Landroid/widget/ImageView;

    .line 68
    const v0, 0x7f10013f

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;->i:Landroid/view/View;

    .line 70
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;->a()V

    .line 71
    return-void
.end method

.method public setText(I)V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;->c:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 132
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;->a()V

    .line 133
    return-void
.end method
