.class public final Lf/j/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/j/d$b;,
        Lf/j/d$a;
    }
.end annotation


# static fields
.field private static final a:Lf/j/d$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lf/j/d$b;

    invoke-direct {v0}, Lf/j/d$b;-><init>()V

    sput-object v0, Lf/j/d;->a:Lf/j/d$b;

    return-void
.end method

.method public static a()Lf/j;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lf/j/d;->a:Lf/j/d$b;

    return-object v0
.end method

.method public static a(Lf/c/a;)Lf/j;
    .locals 1

    .prologue
    .line 78
    invoke-static {p0}, Lf/j/a;->a(Lf/c/a;)Lf/j/a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/concurrent/Future;)Lf/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<*>;)",
            "Lf/j;"
        }
    .end annotation

    .prologue
    .line 89
    new-instance v0, Lf/j/d$a;

    invoke-direct {v0, p0}, Lf/j/d$a;-><init>(Ljava/util/concurrent/Future;)V

    return-object v0
.end method
