.class public final Landroid/support/v4/e/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/e/a$a;,
        Landroid/support/v4/e/a$e;,
        Landroid/support/v4/e/a$d;,
        Landroid/support/v4/e/a$b;,
        Landroid/support/v4/e/a$c;
    }
.end annotation


# static fields
.field private static final a:Landroid/support/v4/e/a$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 145
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 146
    new-instance v0, Landroid/support/v4/e/a$a;

    invoke-direct {v0}, Landroid/support/v4/e/a$a;-><init>()V

    sput-object v0, Landroid/support/v4/e/a;->a:Landroid/support/v4/e/a$c;

    .line 154
    :goto_0
    return-void

    .line 147
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 148
    new-instance v0, Landroid/support/v4/e/a$e;

    invoke-direct {v0}, Landroid/support/v4/e/a$e;-><init>()V

    sput-object v0, Landroid/support/v4/e/a;->a:Landroid/support/v4/e/a$c;

    goto :goto_0

    .line 149
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    if-lt v0, v1, :cond_2

    .line 150
    new-instance v0, Landroid/support/v4/e/a$d;

    invoke-direct {v0}, Landroid/support/v4/e/a$d;-><init>()V

    sput-object v0, Landroid/support/v4/e/a;->a:Landroid/support/v4/e/a$c;

    goto :goto_0

    .line 152
    :cond_2
    new-instance v0, Landroid/support/v4/e/a$b;

    invoke-direct {v0}, Landroid/support/v4/e/a$b;-><init>()V

    sput-object v0, Landroid/support/v4/e/a;->a:Landroid/support/v4/e/a$c;

    goto :goto_0
.end method

.method public static a(Landroid/net/ConnectivityManager;)Z
    .locals 1

    .prologue
    .line 170
    sget-object v0, Landroid/support/v4/e/a;->a:Landroid/support/v4/e/a$c;

    invoke-interface {v0, p0}, Landroid/support/v4/e/a$c;->a(Landroid/net/ConnectivityManager;)Z

    move-result v0

    return v0
.end method
