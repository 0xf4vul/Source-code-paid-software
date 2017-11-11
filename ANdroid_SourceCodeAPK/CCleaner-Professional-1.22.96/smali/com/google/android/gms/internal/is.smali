.class final enum Lcom/google/android/gms/internal/is;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/android/gms/internal/iv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gms/internal/is;",
        ">;",
        "Lcom/google/android/gms/internal/iv;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/android/gms/internal/is;

.field static b:Ljava/util/concurrent/ThreadFactory;

.field static final c:Lcom/google/android/gms/internal/jg;

.field private static final synthetic d:[Lcom/google/android/gms/internal/is;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/is;

    const-string/jumbo v1, "INSTANCE"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/is;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/is;->a:Lcom/google/android/gms/internal/is;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/internal/is;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/gms/internal/is;->a:Lcom/google/android/gms/internal/is;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/internal/is;->d:[Lcom/google/android/gms/internal/is;

    new-instance v0, Lcom/google/android/gms/internal/is$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/is$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/is;->c:Lcom/google/android/gms/internal/jg;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static c()Z
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/is;->d()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static d()Ljava/util/concurrent/ThreadFactory;
    .locals 4

    const/4 v1, 0x0

    sget-object v0, Lcom/google/android/gms/internal/is;->b:Ljava/util/concurrent/ThreadFactory;

    if-nez v0, :cond_0

    :try_start_0
    const-string/jumbo v0, "com.google.appengine.api.ThreadManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "backgroundThreadFactory"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ThreadFactory;

    sput-object v0, Lcom/google/android/gms/internal/is;->b:Ljava/util/concurrent/ThreadFactory;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/is;->b:Ljava/util/concurrent/ThreadFactory;

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static values()[Lcom/google/android/gms/internal/is;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/is;->d:[Lcom/google/android/gms/internal/is;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/is;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/is;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/in;Lcom/google/android/gms/internal/hy;Lcom/google/android/gms/internal/ia;Lcom/google/android/gms/internal/ic$a;)Lcom/google/android/gms/internal/ic;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/id;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/in;->e()Lcom/google/android/gms/internal/hy;

    move-result-object v1

    invoke-direct {v0, v1, p3, p4}, Lcom/google/android/gms/internal/id;-><init>(Lcom/google/android/gms/internal/hy;Lcom/google/android/gms/internal/ia;Lcom/google/android/gms/internal/ic$a;)V

    return-object v0
.end method

.method public final a(Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ij;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Authentication is not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a()Lcom/google/android/gms/internal/ir;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/jh;

    invoke-static {}, Lcom/google/android/gms/internal/is;->d()Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/is;->c:Lcom/google/android/gms/internal/jg;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/jh;-><init>(Ljava/util/concurrent/ThreadFactory;Lcom/google/android/gms/internal/jg;)V

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/in;)Lcom/google/android/gms/internal/iz;
    .locals 2

    const-string/jumbo v0, "RunLoop"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/in;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/lc;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/is$3;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/is$3;-><init>(Lcom/google/android/gms/internal/lc;)V

    return-object v1
.end method

.method public final a(Lcom/google/android/gms/internal/in;Ljava/lang/String;)Lcom/google/android/gms/internal/jz;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/ld$a;)Lcom/google/android/gms/internal/ld;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ld$a;",
            ")",
            "Lcom/google/android/gms/internal/ld;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/lb;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/lb;-><init>(Lcom/google/android/gms/internal/ld$a;Ljava/util/List;)V

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "AppEngine"

    const-string/jumbo v1, "java.specification.version"

    const-string/jumbo v2, "Unknown"

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
