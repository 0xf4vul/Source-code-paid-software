.class public final Lcom/piriform/ccleaner/rooted/r;
.super Landroid/support/v4/app/g;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/piriform/ccleaner/rooted/r$a;
    }
.end annotation


# static fields
.field public static final aa:Ljava/lang/String;


# instance fields
.field private ab:Lcom/piriform/ccleaner/rooted/r$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/piriform/ccleaner/rooted/r;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/piriform/ccleaner/rooted/r;->aa:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/support/v4/app/g;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/piriform/ccleaner/rooted/r;
    .locals 3

    .prologue
    .line 21
    new-instance v0, Lcom/piriform/ccleaner/rooted/r;

    invoke-direct {v0}, Lcom/piriform/ccleaner/rooted/r;-><init>()V

    .line 22
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 23
    const-string/jumbo v2, "dialog_title"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/rooted/r;->e(Landroid/os/Bundle;)V

    .line 25
    return-object v0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 30
    move-object v0, p1

    check-cast v0, Lcom/piriform/ccleaner/rooted/r$a;

    iput-object v0, p0, Lcom/piriform/ccleaner/rooted/r;->ab:Lcom/piriform/ccleaner/rooted/r$a;

    .line 31
    invoke-super {p0, p1}, Landroid/support/v4/app/g;->a(Landroid/app/Activity;)V

    .line 32
    return-void
.end method

.method public final b()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/piriform/ccleaner/rooted/r;->g()Landroid/support/v4/app/i;

    move-result-object v0

    .line 1568
    iget-object v1, p0, Landroid/support/v4/app/h;->p:Landroid/os/Bundle;

    .line 39
    const-string/jumbo v2, "dialog_title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 41
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 42
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0800fa

    .line 43
    invoke-virtual {p0, v1}, Lcom/piriform/ccleaner/rooted/r;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    .line 44
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    .line 45
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 51
    packed-switch p2, :pswitch_data_0

    .line 57
    iget-object v0, p0, Lcom/piriform/ccleaner/rooted/r;->ab:Lcom/piriform/ccleaner/rooted/r$a;

    invoke-interface {v0}, Lcom/piriform/ccleaner/rooted/r$a;->b()V

    .line 59
    :goto_0
    return-void

    .line 53
    :pswitch_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 54
    iget-object v0, p0, Lcom/piriform/ccleaner/rooted/r;->ab:Lcom/piriform/ccleaner/rooted/r$a;

    invoke-interface {v0}, Lcom/piriform/ccleaner/rooted/r$a;->a()V

    goto :goto_0

    .line 51
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
