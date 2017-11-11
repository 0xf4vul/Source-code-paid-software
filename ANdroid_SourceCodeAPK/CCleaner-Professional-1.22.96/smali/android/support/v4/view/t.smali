.class public final Landroid/support/v4/view/t;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/t$a;,
        Landroid/support/v4/view/t$b;,
        Landroid/support/v4/view/t$c;
    }
.end annotation


# static fields
.field static final b:Landroid/support/v4/view/t$c;


# instance fields
.field a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 158
    invoke-static {}, Landroid/support/v4/f/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    new-instance v0, Landroid/support/v4/view/t$a;

    invoke-direct {v0}, Landroid/support/v4/view/t$a;-><init>()V

    sput-object v0, Landroid/support/v4/view/t;->b:Landroid/support/v4/view/t$c;

    .line 163
    :goto_0
    return-void

    .line 161
    :cond_0
    new-instance v0, Landroid/support/v4/view/t$b;

    invoke-direct {v0}, Landroid/support/v4/view/t$b;-><init>()V

    sput-object v0, Landroid/support/v4/view/t;->b:Landroid/support/v4/view/t$c;

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Landroid/support/v4/view/t;->a:Ljava/lang/Object;

    .line 106
    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/support/v4/view/t;
    .locals 2

    .prologue
    .line 176
    new-instance v0, Landroid/support/v4/view/t;

    sget-object v1, Landroid/support/v4/view/t;->b:Landroid/support/v4/view/t$c;

    invoke-interface {v1, p0}, Landroid/support/v4/view/t$c;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/view/t;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
