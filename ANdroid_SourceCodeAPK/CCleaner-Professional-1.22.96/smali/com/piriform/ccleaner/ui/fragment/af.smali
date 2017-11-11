.class public Lcom/piriform/ccleaner/ui/fragment/af;
.super Landroid/support/v4/app/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/piriform/ccleaner/ui/fragment/af$a;
    }
.end annotation


# instance fields
.field public aa:Lcom/piriform/ccleaner/ui/b/d;

.field private ab:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/support/v4/app/g;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/piriform/ccleaner/ui/fragment/af;)Lcom/piriform/ccleaner/ui/b/d;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/af;->aa:Lcom/piriform/ccleaner/ui/b/d;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/piriform/ccleaner/ui/fragment/af;
    .locals 3

    .prologue
    .line 27
    new-instance v0, Lcom/piriform/ccleaner/ui/fragment/af;

    invoke-direct {v0}, Lcom/piriform/ccleaner/ui/fragment/af;-><init>()V

    .line 28
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 29
    const-string/jumbo v2, "messageArgument"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/ui/fragment/af;->e(Landroid/os/Bundle;)V

    .line 32
    return-object v0
.end method

.method static synthetic b(Lcom/piriform/ccleaner/ui/fragment/af;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/af;->ab:Landroid/widget/CheckBox;

    return-object v0
.end method


# virtual methods
.method public final b()Landroid/app/Dialog;
    .locals 5

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/af;->g()Landroid/support/v4/app/i;

    move-result-object v1

    .line 1568
    iget-object v0, p0, Landroid/support/v4/app/h;->p:Landroid/os/Bundle;

    .line 44
    const-string/jumbo v2, "messageArgument"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    const v2, 0x7f08009c

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/piriform/ccleaner/ui/fragment/af;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2086
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/af;->g()Landroid/support/v4/app/i;

    move-result-object v0

    const v3, 0x7f03004a

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 3016
    const v0, 0x7f1000e9

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2088
    check-cast v0, Landroid/widget/TextView;

    .line 2089
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4016
    const v0, 0x7f1000ea

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2090
    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/af;->ab:Landroid/widget/CheckBox;

    move-object v0, v1

    .line 49
    check-cast v0, Lcom/piriform/ccleaner/ui/activity/MainActivity;

    .line 4843
    iget-object v2, v0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->G:Lcom/piriform/ccleaner/ui/fragment/af$a;

    .line 6016
    const v0, 0x7f1000eb

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 5074
    check-cast v0, Landroid/widget/Button;

    .line 5075
    new-instance v4, Lcom/piriform/ccleaner/ui/fragment/af$3;

    invoke-direct {v4, p0, v2}, Lcom/piriform/ccleaner/ui/fragment/af$3;-><init>(Lcom/piriform/ccleaner/ui/fragment/af;Lcom/piriform/ccleaner/ui/fragment/af$a;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08009d

    .line 54
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 55
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08013d

    new-instance v3, Lcom/piriform/ccleaner/ui/fragment/af$2;

    invoke-direct {v3, p0, v2}, Lcom/piriform/ccleaner/ui/fragment/af$2;-><init>(Lcom/piriform/ccleaner/ui/fragment/af;Lcom/piriform/ccleaner/ui/fragment/af$a;)V

    .line 56
    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0800d2

    new-instance v3, Lcom/piriform/ccleaner/ui/fragment/af$1;

    invoke-direct {v3, p0, v2}, Lcom/piriform/ccleaner/ui/fragment/af$1;-><init>(Lcom/piriform/ccleaner/ui/fragment/af;Lcom/piriform/ccleaner/ui/fragment/af$a;)V

    .line 63
    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
