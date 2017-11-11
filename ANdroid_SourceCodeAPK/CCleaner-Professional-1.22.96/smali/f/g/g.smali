.class public Lf/g/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lf/g/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lf/g/g;

    invoke-direct {v0}, Lf/g/g;-><init>()V

    sput-object v0, Lf/g/g;->a:Lf/g/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lf/c/a;)Lf/c/a;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 155
    return-object p0
.end method

.method public static a()Lf/g;
    .locals 2

    .prologue
    .line 53
    new-instance v0, Lf/d/e/j;

    const-string/jumbo v1, "RxComputationScheduler-"

    invoke-direct {v0, v1}, Lf/d/e/j;-><init>(Ljava/lang/String;)V

    .line 1067
    new-instance v1, Lf/d/c/b;

    invoke-direct {v1, v0}, Lf/d/c/b;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    .line 53
    return-object v1
.end method

.method public static b()Lf/g;
    .locals 2

    .prologue
    .line 76
    new-instance v0, Lf/d/e/j;

    const-string/jumbo v1, "RxIoScheduler-"

    invoke-direct {v0, v1}, Lf/d/e/j;-><init>(Ljava/lang/String;)V

    .line 1090
    new-instance v1, Lf/d/c/a;

    invoke-direct {v1, v0}, Lf/d/c/a;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    .line 76
    return-object v1
.end method

.method public static c()Lf/g;
    .locals 2

    .prologue
    .line 99
    new-instance v0, Lf/d/e/j;

    const-string/jumbo v1, "RxNewThreadScheduler-"

    invoke-direct {v0, v1}, Lf/d/e/j;-><init>(Ljava/lang/String;)V

    .line 1113
    new-instance v1, Lf/d/c/f;

    invoke-direct {v1, v0}, Lf/d/c/f;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    .line 99
    return-object v1
.end method

.method public static d()Lf/g;
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    return-object v0
.end method

.method public static e()Lf/g;
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    return-object v0
.end method

.method public static f()Lf/g;
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    return-object v0
.end method

.method public static g()Lf/g/g;
    .locals 1

    .prologue
    .line 159
    sget-object v0, Lf/g/g;->a:Lf/g/g;

    return-object v0
.end method
