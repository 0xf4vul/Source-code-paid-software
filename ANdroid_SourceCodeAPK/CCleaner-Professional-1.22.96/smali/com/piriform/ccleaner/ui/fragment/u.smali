.class public final Lcom/piriform/ccleaner/ui/fragment/u;
.super Landroid/support/v4/app/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/piriform/ccleaner/ui/fragment/u$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/support/v4/app/g;-><init>()V

    return-void
.end method

.method public static a(IILjava/lang/String;)Lcom/piriform/ccleaner/ui/fragment/u;
    .locals 3

    .prologue
    .line 18
    new-instance v0, Lcom/piriform/ccleaner/ui/fragment/u;

    invoke-direct {v0}, Lcom/piriform/ccleaner/ui/fragment/u;-><init>()V

    .line 19
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 20
    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 21
    const-string/jumbo v2, "message"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 22
    const-string/jumbo v2, "messageArgument"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/ui/fragment/u;->e(Landroid/os/Bundle;)V

    .line 25
    return-object v0
.end method


# virtual methods
.method public final b()Landroid/app/Dialog;
    .locals 6

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/u;->g()Landroid/support/v4/app/i;

    move-result-object v1

    .line 1568
    iget-object v0, p0, Landroid/support/v4/app/h;->p:Landroid/os/Bundle;

    .line 34
    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 35
    const-string/jumbo v3, "message"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 36
    const-string/jumbo v4, "messageArgument"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/piriform/ccleaner/ui/fragment/u;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 39
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/u;->g()Landroid/support/v4/app/i;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/ui/fragment/u$a;

    .line 40
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 41
    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 42
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040013

    new-instance v3, Lcom/piriform/ccleaner/ui/fragment/u$2;

    invoke-direct {v3, p0, v0}, Lcom/piriform/ccleaner/ui/fragment/u$2;-><init>(Lcom/piriform/ccleaner/ui/fragment/u;Lcom/piriform/ccleaner/ui/fragment/u$a;)V

    .line 43
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040009

    new-instance v3, Lcom/piriform/ccleaner/ui/fragment/u$1;

    invoke-direct {v3, p0, v0}, Lcom/piriform/ccleaner/ui/fragment/u$1;-><init>(Lcom/piriform/ccleaner/ui/fragment/u;Lcom/piriform/ccleaner/ui/fragment/u$a;)V

    .line 50
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
