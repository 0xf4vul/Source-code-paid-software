.class public final Lf/a/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lf/a/b/a;


# instance fields
.field private final b:Lf/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lf/a/b/a;

    invoke-direct {v0}, Lf/a/b/a;-><init>()V

    sput-object v0, Lf/a/b/a;->a:Lf/a/b/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {}, Lf/a/a/a;->a()Lf/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lf/a/a/a;->b()Lf/a/a/b;

    .line 30
    invoke-static {}, Lf/a/a/b;->b()Lf/g;

    .line 34
    new-instance v0, Lf/a/b/b;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lf/a/b/b;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lf/a/b/a;->b:Lf/g;

    .line 36
    return-void
.end method

.method public static a()Lf/g;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lf/a/b/a;->a:Lf/a/b/a;

    iget-object v0, v0, Lf/a/b/a;->b:Lf/g;

    return-object v0
.end method
