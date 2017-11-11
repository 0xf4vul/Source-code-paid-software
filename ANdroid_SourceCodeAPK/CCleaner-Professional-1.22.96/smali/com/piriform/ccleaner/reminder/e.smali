.class public final Lcom/piriform/ccleaner/reminder/e;
.super Landroid/support/v4/app/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/piriform/ccleaner/reminder/e$a;
    }
.end annotation


# instance fields
.field private aa:I

.field private final ab:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/support/v4/app/g;-><init>()V

    .line 22
    new-instance v0, Lcom/piriform/ccleaner/reminder/e$1;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/reminder/e$1;-><init>(Lcom/piriform/ccleaner/reminder/e;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/reminder/e;->ab:Landroid/content/DialogInterface$OnClickListener;

    .line 46
    return-void
.end method

.method public static a(Lcom/piriform/ccleaner/reminder/a;)Lcom/piriform/ccleaner/reminder/e;
    .locals 3

    .prologue
    .line 35
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 36
    if-nez p0, :cond_0

    sget-object v0, Lcom/piriform/ccleaner/reminder/a;->a:Lcom/piriform/ccleaner/reminder/a;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/reminder/a;->ordinal()I

    move-result v0

    .line 37
    :goto_0
    const-string/jumbo v2, "ARG_PERSISTED_ITEM_INDEX"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 39
    new-instance v0, Lcom/piriform/ccleaner/reminder/e;

    invoke-direct {v0}, Lcom/piriform/ccleaner/reminder/e;-><init>()V

    .line 40
    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/reminder/e;->e(Landroid/os/Bundle;)V

    .line 41
    return-object v0

    .line 36
    :cond_0
    invoke-virtual {p0}, Lcom/piriform/ccleaner/reminder/a;->ordinal()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public final b()Landroid/app/Dialog;
    .locals 5

    .prologue
    .line 51
    .line 1568
    iget-object v0, p0, Landroid/support/v4/app/h;->p:Landroid/os/Bundle;

    .line 52
    if-eqz v0, :cond_0

    .line 53
    const-string/jumbo v1, "ARG_PERSISTED_ITEM_INDEX"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/piriform/ccleaner/reminder/e;->aa:I

    .line 56
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/piriform/ccleaner/reminder/e;->g()Landroid/support/v4/app/i;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 57
    const v1, 0x7f080112

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    .line 58
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0f0002

    iget v3, p0, Lcom/piriform/ccleaner/reminder/e;->aa:I

    iget-object v4, p0, Lcom/piriform/ccleaner/reminder/e;->ab:Landroid/content/DialogInterface$OnClickListener;

    .line 59
    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 65
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
