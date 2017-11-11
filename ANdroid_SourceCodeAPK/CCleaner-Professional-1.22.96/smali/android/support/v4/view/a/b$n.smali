.class public final Landroid/support/v4/view/a/b$n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "n"
.end annotation


# instance fields
.field final a:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 595
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 596
    iput-object p1, p0, Landroid/support/v4/view/a/b$n;->a:Ljava/lang/Object;

    .line 597
    return-void
.end method

.method public static a(IIIIZ)Landroid/support/v4/view/a/b$n;
    .locals 7

    .prologue
    .line 575
    new-instance v6, Landroid/support/v4/view/a/b$n;

    sget-object v0, Landroid/support/v4/view/a/b;->a:Landroid/support/v4/view/a/b$g;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/support/v4/view/a/b$g;->a(IIIIZ)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/support/v4/view/a/b$n;-><init>(Ljava/lang/Object;)V

    return-object v6
.end method
