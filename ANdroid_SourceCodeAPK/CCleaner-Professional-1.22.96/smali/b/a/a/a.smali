.class public final Lb/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/a/a$a;
    }
.end annotation


# static fields
.field private static a:Z

.field private static b:I

.field private static c:Lb/a/a/a$a;

.field private static d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-boolean v0, Lb/a/a/a;->a:Z

    .line 68
    const v0, 0xffff

    sput v0, Lb/a/a/a;->b:I

    .line 70
    const/4 v0, 0x0

    sput-object v0, Lb/a/a/a;->c:Lb/a/a/a$a;

    .line 194
    const/4 v0, 0x1

    sput-boolean v0, Lb/a/a/a;->d:Z

    return-void
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-boolean v0, Lb/a/a/a;->a:Z

    .line 42
    return-void
.end method

.method private static a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 83
    sget-boolean v0, Lb/a/a/a;->a:Z

    if-eqz v0, :cond_0

    sget v0, Lb/a/a/a;->b:I

    and-int/2addr v0, p0

    if-ne v0, p0, :cond_0

    .line 84
    sget-object v0, Lb/a/a/a;->c:Lb/a/a/a$a;

    if-eqz v0, :cond_1

    .line 85
    sget-object v0, Lb/a/a/a;->c:Lb/a/a/a$a;

    invoke-interface {v0, p2}, Lb/a/a/a$a;->a(Ljava/lang/String;)V

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    const-string/jumbo v1, "libsuperuser"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[libsuperuser]["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v0, "["

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, " "

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string/jumbo v0, ""

    goto :goto_1
.end method

.method public static a(Lb/a/a/a$a;)V
    .locals 0

    .prologue
    .line 180
    sput-object p0, Lb/a/a/a;->c:Lb/a/a/a$a;

    .line 181
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 100
    const/4 v0, 0x1

    const-string/jumbo v1, "G"

    invoke-static {v0, v1, p0}, Lb/a/a/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public static b()V
    .locals 2

    .prologue
    .line 137
    sget v0, Lb/a/a/a;->b:I

    const v1, 0xffff

    or-int/2addr v0, v1

    sput v0, Lb/a/a/a;->b:I

    .line 141
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 111
    const/4 v0, 0x2

    const-string/jumbo v1, "C"

    invoke-static {v0, v1, p0}, Lb/a/a/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 122
    const/4 v0, 0x4

    const-string/jumbo v1, "O"

    invoke-static {v0, v1, p0}, Lb/a/a/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public static c()Z
    .locals 1

    .prologue
    .line 1050
    sget-boolean v0, Lb/a/a/a;->a:Z

    .line 228
    if-eqz v0, :cond_0

    .line 1217
    sget-boolean v0, Lb/a/a/a;->d:Z

    .line 228
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d()Z
    .locals 2

    .prologue
    .line 237
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
