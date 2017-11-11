.class final enum Lf/d/c/d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lf/d/c/d;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lf/d/e/j;

.field private static final synthetic b:[Lf/d/c/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    const/4 v0, 0x0

    new-array v0, v0, [Lf/d/c/d;

    sput-object v0, Lf/d/c/d;->b:[Lf/d/c/d;

    .line 33
    new-instance v0, Lf/d/e/j;

    const-string/jumbo v1, "RxScheduledExecutorPool-"

    invoke-direct {v0, v1}, Lf/d/e/j;-><init>(Ljava/lang/String;)V

    sput-object v0, Lf/d/c/d;->a:Lf/d/e/j;

    return-void
.end method

.method public static a()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 2

    .prologue
    .line 44
    invoke-static {}, Lf/g/c;->a()Lf/c/d;

    move-result-object v0

    .line 45
    if-nez v0, :cond_0

    .line 1053
    const/4 v0, 0x1

    .line 2036
    sget-object v1, Lf/d/c/d;->a:Lf/d/e/j;

    .line 1053
    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 48
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Lf/c/d;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lf/d/c/d;
    .locals 1

    .prologue
    .line 29
    const-class v0, Lf/d/c/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lf/d/c/d;

    return-object v0
.end method

.method public static values()[Lf/d/c/d;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lf/d/c/d;->b:[Lf/d/c/d;

    invoke-virtual {v0}, [Lf/d/c/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lf/d/c/d;

    return-object v0
.end method
