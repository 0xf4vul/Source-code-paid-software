.class public final Lcom/piriform/ccleaner/professional/ui/ProCardView;
.super Landroid/support/v7/widget/CardView;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/professional/ui/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/piriform/ccleaner/professional/ui/ProCardView$a;
    }
.end annotation


# static fields
.field private static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/piriform/ccleaner/professional/m;",
            "Lcom/piriform/ccleaner/professional/ui/ProCardView$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/view/View;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/Button;

.field private k:Landroid/widget/ProgressBar;

.field private l:Landroid/view/View;

.field private m:Landroid/widget/Button;

.field private n:Landroid/widget/Button;

.field private o:Lcom/piriform/ccleaner/professional/ui/ProCardView$a;

.field private p:Lcom/piriform/ccleaner/professional/ui/b$a;

.field private final q:Landroid/view/View$OnClickListener;

.field private r:Ljava/lang/CharSequence;

.field private s:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 12067
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 12068
    sget-object v1, Lcom/piriform/ccleaner/professional/m;->b:Lcom/piriform/ccleaner/professional/m;

    sget-object v2, Lcom/piriform/ccleaner/professional/ui/ProCardView$a;->d:Lcom/piriform/ccleaner/professional/ui/ProCardView$a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12069
    sget-object v1, Lcom/piriform/ccleaner/professional/m;->a:Lcom/piriform/ccleaner/professional/m;

    sget-object v2, Lcom/piriform/ccleaner/professional/ui/ProCardView$a;->e:Lcom/piriform/ccleaner/professional/ui/ProCardView$a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12070
    sget-object v1, Lcom/piriform/ccleaner/professional/m;->d:Lcom/piriform/ccleaner/professional/m;

    sget-object v2, Lcom/piriform/ccleaner/professional/ui/ProCardView$a;->c:Lcom/piriform/ccleaner/professional/ui/ProCardView$a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12071
    sget-object v1, Lcom/piriform/ccleaner/professional/m;->c:Lcom/piriform/ccleaner/professional/m;

    sget-object v2, Lcom/piriform/ccleaner/professional/ui/ProCardView$a;->b:Lcom/piriform/ccleaner/professional/ui/ProCardView$a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sput-object v0, Lcom/piriform/ccleaner/professional/ui/ProCardView;->e:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/piriform/ccleaner/professional/ui/ProCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 80
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    new-instance v0, Lcom/piriform/ccleaner/professional/ui/ProCardView$1;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/professional/ui/ProCardView$1;-><init>(Lcom/piriform/ccleaner/professional/ui/ProCardView;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/professional/ui/ProCardView;->q:Landroid/view/View$OnClickListener;

    .line 1085
    invoke-virtual {p0}, Lcom/piriform/ccleaner/professional/ui/ProCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1086
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 1087
    sget-object v1, Lcom/piriform/ccleaner/h$a;->ProCardView:[I

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1089
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1090
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1091
    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/professional/ui/ProCardView;->setTitleText(Ljava/lang/CharSequence;)V

    .line 1092
    invoke-virtual {p0, v2}, Lcom/piriform/ccleaner/professional/ui/ProCardView;->setBodyText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1094
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1095
    return-void

    .line 1094
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method static synthetic a(Lcom/piriform/ccleaner/professional/ui/ProCardView;)Lcom/piriform/ccleaner/professional/ui/b$a;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/ui/ProCardView;->p:Lcom/piriform/ccleaner/professional/ui/b$a;

    return-object v0
.end method

.method private a(Lcom/piriform/ccleaner/professional/ui/ProCardView$a;)V
    .locals 1

    .prologue
    .line 153
    iput-object p1, p0, Lcom/piriform/ccleaner/professional/ui/ProCardView;->o:Lcom/piriform/ccleaner/professional/ui/ProCardView$a;

    .line 154
    invoke-static {p1}, Lcom/piriform/ccleaner/professional/ui/ProCardView$a;->a(Lcom/piriform/ccleaner/professional/ui/ProCardView$a;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/piriform/ccleaner/professional/ui/ProCardView;->setSingleButtonStatusText(I)V

    .line 155
    invoke-static {p1}, Lcom/piriform/ccleaner/professional/ui/ProCardView$a;->b(Lcom/piriform/ccleaner/professional/ui/ProCardView$a;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/piriform/ccleaner/professional/ui/ProCardView;->setSingleButtonText(I)V

    .line 156
    invoke-direct {p0, p1}, Lcom/piriform/ccleaner/professional/ui/ProCardView;->setButtonBarVisibilities(Lcom/piriform/ccleaner/professional/ui/ProCardView$a;)V

    .line 157
    invoke-static {p1}, Lcom/piriform/ccleaner/professional/ui/ProCardView$a;->c(Lcom/piriform/ccleaner/professional/ui/ProCardView$a;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/piriform/ccleaner/professional/ui/ProCardView;->setShown(Z)V

    .line 10256
    iget-boolean v0, p1, Lcom/piriform/ccleaner/professional/ui/ProCardView$a;->f:Z

    .line 158
    invoke-direct {p0, v0}, Lcom/piriform/ccleaner/professional/ui/ProCardView;->setProgressBarVisible(Z)V

    .line 159
    return-void
.end method

.method static synthetic b(Lcom/piriform/ccleaner/professional/ui/ProCardView;)Lcom/piriform/ccleaner/professional/ui/ProCardView$a;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/ui/ProCardView;->o:Lcom/piriform/ccleaner/professional/ui/ProCardView$a;

    return-object v0
.end method

.method private setButtonBarVisibilities(Lcom/piriform/ccleaner/professional/ui/ProCardView$a;)V
    .locals 4

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 163
    iget-object v3, p0, Lcom/piriform/ccleaner/professional/ui/ProCardView;->h:Landroid/view/View;

    .line 11236
    iget-boolean v0, p1, Lcom/piriform/ccleaner/professional/ui/ProCardView$a;->g:Z

    if-eqz v0, :cond_0

    move v0, v1

    .line 163
    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/ui/ProCardView;->l:Landroid/view/View;

    .line 11240
    iget-boolean v3, p1, Lcom/piriform/ccleaner/professional/ui/ProCardView$a;->g:Z

    if-eqz v3, :cond_1

    .line 164
    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 165
    return-void

    :cond_0
    move v0, v2

    .line 11236
    goto :goto_0

    :cond_1
    move v2, v1

    .line 11240
    goto :goto_1
.end method

.method private setProgressBarVisible(Z)V
    .locals 2

    .prologue
    .line 190
    iget-object v1, p0, Lcom/piriform/ccleaner/professional/ui/ProCardView;->k:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 191
    return-void

    .line 190
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private setShown(Z)V
    .locals 1

    .prologue
    .line 186
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/professional/ui/ProCardView;->setVisibility(I)V

    .line 187
    return-void

    .line 186
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private setSingleButtonStatusText(I)V
    .locals 2

    .prologue
    .line 168
    if-nez p1, :cond_0

    .line 169
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/ui/ProCardView;->i:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    :goto_0
    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/ui/ProCardView;->i:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/ui/ProCardView;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private setSingleButtonText(I)V
    .locals 2

    .prologue
    .line 177
    if-nez p1, :cond_0

    .line 178
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/ui/ProCardView;->j:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 183
    :goto_0
    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/ui/ProCardView;->j:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 181
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/ui/ProCardView;->j:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 149
    sget-object v0, Lcom/piriform/ccleaner/professional/ui/ProCardView$a;->a:Lcom/piriform/ccleaner/professional/ui/ProCardView$a;

    invoke-direct {p0, v0}, Lcom/piriform/ccleaner/professional/ui/ProCardView;->a(Lcom/piriform/ccleaner/professional/ui/ProCardView$a;)V

    .line 150
    return-void
.end method

.method public final a(Lcom/piriform/ccleaner/professional/m;)V
    .locals 1

    .prologue
    .line 144
    sget-object v0, Lcom/piriform/ccleaner/professional/ui/ProCardView;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/professional/ui/ProCardView$a;

    invoke-direct {p0, v0}, Lcom/piriform/ccleaner/professional/ui/ProCardView;->a(Lcom/piriform/ccleaner/professional/ui/ProCardView$a;)V

    .line 145
    return-void
.end method

.method protected final onFinishInflate()V
    .locals 2

    .prologue
    .line 114
    invoke-super {p0}, Landroid/support/v7/widget/CardView;->onFinishInflate()V

    .line 116
    invoke-virtual {p0}, Lcom/piriform/ccleaner/professional/ui/ProCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f030093

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 2016
    const v0, 0x7f100162

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 118
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/piriform/ccleaner/professional/ui/ProCardView;->f:Landroid/widget/TextView;

    .line 3016
    const v0, 0x7f100163

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 119
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/piriform/ccleaner/professional/ui/ProCardView;->g:Landroid/widget/TextView;

    .line 4016
    const v0, 0x7f100164

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 120
    iput-object v0, p0, Lcom/piriform/ccleaner/professional/ui/ProCardView;->h:Landroid/view/View;

    .line 5016
    const v0, 0x7f100165

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 121
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/piriform/ccleaner/professional/ui/ProCardView;->i:Landroid/widget/TextView;

    .line 6016
    const v0, 0x7f100167

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 122
    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/piriform/ccleaner/professional/ui/ProCardView;->j:Landroid/widget/Button;

    .line 7016
    const v0, 0x7f100166

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 123
    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/piriform/ccleaner/professional/ui/ProCardView;->k:Landroid/widget/ProgressBar;

    .line 8016
    const v0, 0x7f100168

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 125
    iput-object v0, p0, Lcom/piriform/ccleaner/professional/ui/ProCardView;->l:Landroid/view/View;

    .line 9016
    const v0, 0x7f100169

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 126
    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/piriform/ccleaner/professional/ui/ProCardView;->m:Landroid/widget/Button;

    .line 10016
    const v0, 0x7f10016a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 127
    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/piriform/ccleaner/professional/ui/ProCardView;->n:Landroid/widget/Button;

    .line 129
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/ui/ProCardView;->r:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/professional/ui/ProCardView;->setTitleText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/ui/ProCardView;->s:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/professional/ui/ProCardView;->setBodyText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/ui/ProCardView;->j:Landroid/widget/Button;

    iget-object v1, p0, Lcom/piriform/ccleaner/professional/ui/ProCardView;->q:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/ui/ProCardView;->m:Landroid/widget/Button;

    iget-object v1, p0, Lcom/piriform/ccleaner/professional/ui/ProCardView;->q:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/ui/ProCardView;->n:Landroid/widget/Button;

    iget-object v1, p0, Lcom/piriform/ccleaner/professional/ui/ProCardView;->q:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10149
    sget-object v0, Lcom/piriform/ccleaner/professional/ui/ProCardView$a;->a:Lcom/piriform/ccleaner/professional/ui/ProCardView$a;

    invoke-direct {p0, v0}, Lcom/piriform/ccleaner/professional/ui/ProCardView;->a(Lcom/piriform/ccleaner/professional/ui/ProCardView$a;)V

    .line 136
    return-void
.end method

.method public final setBodyText(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 106
    iput-object p1, p0, Lcom/piriform/ccleaner/professional/ui/ProCardView;->s:Ljava/lang/CharSequence;

    .line 107
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/ui/ProCardView;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/ui/ProCardView;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    :cond_0
    return-void
.end method

.method public final setListener(Lcom/piriform/ccleaner/professional/ui/b$a;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/piriform/ccleaner/professional/ui/ProCardView;->p:Lcom/piriform/ccleaner/professional/ui/b$a;

    .line 140
    return-void
.end method

.method public final setTitleText(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 99
    iput-object p1, p0, Lcom/piriform/ccleaner/professional/ui/ProCardView;->r:Ljava/lang/CharSequence;

    .line 100
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/ui/ProCardView;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/ui/ProCardView;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    :cond_0
    return-void
.end method
