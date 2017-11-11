.class public final Lcom/piriform/ccleaner/rooted/p;
.super Landroid/support/v4/app/g;
.source "SourceFile"


# static fields
.field private static final aa:Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final ab:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/piriform/ccleaner/rooted/p;->aa:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/support/v4/app/g;-><init>()V

    .line 22
    new-instance v0, Lcom/piriform/ccleaner/rooted/p$1;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/rooted/p$1;-><init>(Lcom/piriform/ccleaner/rooted/p;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/rooted/p;->ab:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public static I()Lcom/piriform/ccleaner/rooted/p;
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/piriform/ccleaner/rooted/p;

    invoke-direct {v0}, Lcom/piriform/ccleaner/rooted/p;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final b()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/piriform/ccleaner/rooted/p;->g()Landroid/support/v4/app/i;

    move-result-object v0

    .line 49
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0800f5

    .line 50
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0800f4

    .line 51
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0800f9

    iget-object v2, p0, Lcom/piriform/ccleaner/rooted/p;->ab:Landroid/content/DialogInterface$OnClickListener;

    .line 52
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0800f8

    sget-object v2, Lcom/piriform/ccleaner/rooted/p;->aa:Landroid/content/DialogInterface$OnClickListener;

    .line 53
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
