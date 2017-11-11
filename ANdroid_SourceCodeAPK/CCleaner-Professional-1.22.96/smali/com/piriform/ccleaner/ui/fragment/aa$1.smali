.class final Lcom/piriform/ccleaner/ui/fragment/aa$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/ui/fragment/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/ui/fragment/aa;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/ui/fragment/aa;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/fragment/aa$1;->a:Lcom/piriform/ccleaner/ui/fragment/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 164
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/fragment/aa$1;->a:Lcom/piriform/ccleaner/ui/fragment/aa;

    invoke-virtual {v1}, Lcom/piriform/ccleaner/ui/fragment/aa;->g()Landroid/support/v4/app/i;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080083

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0800a3

    .line 165
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/piriform/ccleaner/ui/fragment/aa$1$1;

    invoke-direct {v2, p0}, Lcom/piriform/ccleaner/ui/fragment/aa$1$1;-><init>(Lcom/piriform/ccleaner/ui/fragment/aa$1;)V

    .line 166
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/piriform/ccleaner/ui/e/a;

    invoke-direct {v2}, Lcom/piriform/ccleaner/ui/e/a;-><init>()V

    .line 171
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 173
    return-void
.end method
