.class public final Landroid/support/b/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/support/b/w;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    .line 43
    new-instance v0, Landroid/support/b/v;

    invoke-direct {v0}, Landroid/support/b/v;-><init>()V

    sput-object v0, Landroid/support/b/t;->a:Landroid/support/b/w;

    .line 47
    :goto_0
    return-void

    .line 45
    :cond_0
    new-instance v0, Landroid/support/b/x;

    invoke-direct {v0}, Landroid/support/b/x;-><init>()V

    sput-object v0, Landroid/support/b/t;->a:Landroid/support/b/w;

    goto :goto_0
.end method

.method public static a(Landroid/view/ViewGroup;Landroid/support/b/n;)V
    .locals 2

    .prologue
    .line 125
    sget-object v1, Landroid/support/b/t;->a:Landroid/support/b/w;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, p0, v0}, Landroid/support/b/w;->a(Landroid/view/ViewGroup;Landroid/support/b/q;)V

    .line 126
    return-void

    .line 125
    :cond_0
    iget-object v0, p1, Landroid/support/b/n;->a:Landroid/support/b/q;

    goto :goto_0
.end method
