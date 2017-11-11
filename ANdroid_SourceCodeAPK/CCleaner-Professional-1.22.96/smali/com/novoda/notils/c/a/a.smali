.class public final Lcom/novoda/notils/c/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static b:Ljava/lang/String;

.field public static c:I

.field private static d:Z

.field private static e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    sput-boolean v0, Lcom/novoda/notils/c/a/a;->a:Z

    .line 22
    sput-boolean v0, Lcom/novoda/notils/c/a/a;->d:Z

    .line 27
    const-string/jumbo v0, "NoTils"

    sput-object v0, Lcom/novoda/notils/c/a/a;->b:Ljava/lang/String;

    .line 31
    const/4 v0, 0x5

    sput v0, Lcom/novoda/notils/c/a/a;->c:I

    .line 38
    const-string/jumbo v0, " "

    sput-object v0, Lcom/novoda/notils/c/a/a;->e:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 170
    sget v0, Lcom/novoda/notils/c/a/a;->c:I

    .line 1174
    invoke-static {}, Lcom/novoda/notils/c/a/a;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1175
    :goto_0
    return-object p0

    .line 1177
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 1178
    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    aget-object v0, v2, v0

    .line 1179
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v2

    .line 1180
    const-string/jumbo v3, "(%s.java:%d)"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x5

    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v6

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1181
    const-string/jumbo v3, "[%s][%s.%s] "

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v6

    aput-object v2, v4, v7

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x1

    sput-boolean v0, Lcom/novoda/notils/c/a/a;->d:Z

    .line 204
    const/4 v0, 0x0

    sput-boolean v0, Lcom/novoda/notils/c/a/a;->a:Z

    .line 205
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 138
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1, v0}, Lcom/novoda/notils/c/a/a;->c(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 139
    return-void
.end method

.method private static a(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 186
    sget-object v0, Lcom/novoda/notils/c/a/a;->b:Ljava/lang/String;

    const-string/jumbo v1, "Error"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 187
    return-void
.end method

.method public static varargs a(Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 107
    :try_start_0
    invoke-static {}, Lcom/novoda/notils/c/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    sget-object v0, Lcom/novoda/notils/c/a/a;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/novoda/notils/c/a/a;->f([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/novoda/notils/c/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/novoda/notils/c/a/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static varargs a([Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 49
    :try_start_0
    invoke-static {}, Lcom/novoda/notils/c/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    sget-object v0, Lcom/novoda/notils/c/a/a;->b:Ljava/lang/String;

    invoke-static {p0}, Lcom/novoda/notils/c/a/a;->f([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/novoda/notils/c/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/novoda/notils/c/a/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static varargs b(Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 125
    :try_start_0
    invoke-static {}, Lcom/novoda/notils/c/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    sget-object v0, Lcom/novoda/notils/c/a/a;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/novoda/notils/c/a/a;->f([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/novoda/notils/c/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/novoda/notils/c/a/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static varargs b([Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 59
    :try_start_0
    invoke-static {}, Lcom/novoda/notils/c/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    sget-object v0, Lcom/novoda/notils/c/a/a;->b:Ljava/lang/String;

    invoke-static {p0}, Lcom/novoda/notils/c/a/a;->f([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/novoda/notils/c/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/novoda/notils/c/a/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static b()Z
    .locals 2

    .prologue
    .line 213
    sget-boolean v0, Lcom/novoda/notils/c/a/a;->d:Z

    if-eqz v0, :cond_0

    .line 214
    sget-boolean v0, Lcom/novoda/notils/c/a/a;->a:Z

    return v0

    .line 216
    :cond_0
    new-instance v0, Lcom/novoda/notils/b/a;

    const-string/jumbo v1, "#rekt - To use simple logger you need to have called setShowLogs(boolean). The typical way is to use Log.setShowLogs(BuildConfig.DEBUG) in onCreate() of your class that extends Application.(It\'s ok we\'ve all been there.)"

    invoke-direct {v0, v1}, Lcom/novoda/notils/b/a;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs c(Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 143
    :try_start_0
    invoke-static {}, Lcom/novoda/notils/c/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    sget-object v0, Lcom/novoda/notils/c/a/a;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/novoda/notils/c/a/a;->f([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/novoda/notils/c/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 147
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/novoda/notils/c/a/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static varargs c([Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 69
    :try_start_0
    invoke-static {}, Lcom/novoda/notils/c/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    sget-object v0, Lcom/novoda/notils/c/a/a;->b:Ljava/lang/String;

    invoke-static {p0}, Lcom/novoda/notils/c/a/a;->f([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/novoda/notils/c/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/novoda/notils/c/a/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static varargs d([Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 79
    :try_start_0
    invoke-static {}, Lcom/novoda/notils/c/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    sget-object v0, Lcom/novoda/notils/c/a/a;->b:Ljava/lang/String;

    invoke-static {p0}, Lcom/novoda/notils/c/a/a;->f([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/novoda/notils/c/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/novoda/notils/c/a/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static varargs e([Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 89
    :try_start_0
    invoke-static {}, Lcom/novoda/notils/c/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    sget-object v0, Lcom/novoda/notils/c/a/a;->b:Ljava/lang/String;

    invoke-static {p0}, Lcom/novoda/notils/c/a/a;->f([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/novoda/notils/c/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/novoda/notils/c/a/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static varargs f([Ljava/lang/Object;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p0, v0

    .line 192
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/novoda/notils/c/a/a;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 194
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
