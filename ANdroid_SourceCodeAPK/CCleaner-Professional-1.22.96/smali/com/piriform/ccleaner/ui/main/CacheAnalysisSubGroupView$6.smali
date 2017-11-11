.class final Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView$6;->a:Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    const v7, 0x7f1000c6

    const v6, 0x7f1000c5

    .line 299
    new-instance v2, Lcom/piriform/ccleaner/ui/d$a;

    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView$6;->a:Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/piriform/ccleaner/ui/d$a;-><init>(Landroid/content/Context;)V

    .line 1067
    const v0, 0x7f0801b9

    iput v0, v2, Lcom/piriform/ccleaner/ui/d$a;->d:I

    .line 1072
    const v0, 0x7f0801b4

    iput v0, v2, Lcom/piriform/ccleaner/ui/d$a;->e:I

    .line 1077
    const v0, 0x7f0801b8

    iput v0, v2, Lcom/piriform/ccleaner/ui/d$a;->f:I

    .line 1312
    new-instance v0, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView$6$1;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView$6$1;-><init>(Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView$6;)V

    .line 2082
    iput-object v0, v2, Lcom/piriform/ccleaner/ui/d$a;->b:Lcom/piriform/ccleaner/ui/d$c;

    .line 2092
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v0, v2, Lcom/piriform/ccleaner/ui/d$a;->a:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2094
    iget-object v0, v2, Lcom/piriform/ccleaner/ui/d$a;->a:Landroid/content/Context;

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 2096
    const v3, 0x7f03003f

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 2098
    const v0, 0x7f1000c4

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2099
    iget v4, v2, Lcom/piriform/ccleaner/ui/d$a;->d:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 2101
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 2102
    iget v4, v2, Lcom/piriform/ccleaner/ui/d$a;->e:I

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    .line 2104
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 2105
    iget v4, v2, Lcom/piriform/ccleaner/ui/d$a;->f:I

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    .line 2107
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2109
    new-instance v3, Lcom/piriform/ccleaner/ui/d;

    .line 2110
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iget-object v0, v2, Lcom/piriform/ccleaner/ui/d$a;->b:Lcom/piriform/ccleaner/ui/d$c;

    .line 2117
    if-eqz v0, :cond_0

    .line 2111
    :goto_0
    iget-object v1, v2, Lcom/piriform/ccleaner/ui/d$a;->c:Lcom/piriform/ccleaner/ui/d$b;

    .line 2126
    if-eqz v1, :cond_1

    .line 2112
    :goto_1
    invoke-direct {v3, v4, v0, v1}, Lcom/piriform/ccleaner/ui/d;-><init>(Landroid/app/AlertDialog;Lcom/piriform/ccleaner/ui/d$c;Lcom/piriform/ccleaner/ui/d$b;)V

    .line 306
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView$6;->a:Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;

    iget-object v0, v0, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;->c:Lcom/piriform/ccleaner/b/a;

    sget-object v1, Lcom/piriform/ccleaner/b/b;->F:Lcom/piriform/ccleaner/b/b;

    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/b/a;->a(Lcom/piriform/ccleaner/b/b;)V

    .line 3027
    iget-object v0, v3, Lcom/piriform/ccleaner/ui/d;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 3032
    iget-object v0, v3, Lcom/piriform/ccleaner/ui/d;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 3033
    new-instance v1, Lcom/piriform/ccleaner/ui/d$1;

    invoke-direct {v1, v3}, Lcom/piriform/ccleaner/ui/d$1;-><init>(Lcom/piriform/ccleaner/ui/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3040
    iget-object v0, v3, Lcom/piriform/ccleaner/ui/d;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 3041
    new-instance v1, Lcom/piriform/ccleaner/ui/d$2;

    invoke-direct {v1, v3}, Lcom/piriform/ccleaner/ui/d$2;-><init>(Lcom/piriform/ccleaner/ui/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    return-void

    .line 2117
    :cond_0
    new-instance v0, Lcom/piriform/ccleaner/ui/d$a$1;

    invoke-direct {v0, v2}, Lcom/piriform/ccleaner/ui/d$a$1;-><init>(Lcom/piriform/ccleaner/ui/d$a;)V

    goto :goto_0

    .line 2126
    :cond_1
    new-instance v1, Lcom/piriform/ccleaner/ui/d$a$2;

    invoke-direct {v1, v2}, Lcom/piriform/ccleaner/ui/d$a$2;-><init>(Lcom/piriform/ccleaner/ui/d$a;)V

    goto :goto_1
.end method
