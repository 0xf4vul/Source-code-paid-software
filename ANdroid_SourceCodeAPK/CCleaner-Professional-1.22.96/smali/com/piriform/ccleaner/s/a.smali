.class public final Lcom/piriform/ccleaner/s/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/s/h;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;

.field private static final d:I


# instance fields
.field private final e:Lcom/piriform/ccleaner/s/e;

.field private final f:Lcom/piriform/ccleaner/s/j;

.field private final g:Lcom/piriform/ccleaner/m/m;

.field private final h:Lcom/piriform/ccleaner/s/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v0, Lcom/piriform/ccleaner/s/a;->a:Ljava/lang/String;

    .line 16
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sput-object v0, Lcom/piriform/ccleaner/s/a;->b:Ljava/lang/String;

    .line 17
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/piriform/ccleaner/s/a;->c:Ljava/lang/String;

    .line 18
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lcom/piriform/ccleaner/s/a;->d:I

    return-void
.end method

.method public constructor <init>(Lcom/piriform/ccleaner/s/e;Lcom/piriform/ccleaner/s/i;Lcom/piriform/ccleaner/m/m;Lcom/piriform/ccleaner/s/j;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/piriform/ccleaner/s/a;->e:Lcom/piriform/ccleaner/s/e;

    .line 32
    iput-object p2, p0, Lcom/piriform/ccleaner/s/a;->h:Lcom/piriform/ccleaner/s/i;

    .line 33
    iput-object p3, p0, Lcom/piriform/ccleaner/s/a;->g:Lcom/piriform/ccleaner/m/m;

    .line 34
    iput-object p4, p0, Lcom/piriform/ccleaner/s/a;->f:Lcom/piriform/ccleaner/s/j;

    .line 35
    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    if-nez p0, :cond_0

    .line 154
    const-string/jumbo v0, ""

    .line 156
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private t()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 82
    iget-object v2, p0, Lcom/piriform/ccleaner/s/a;->e:Lcom/piriform/ccleaner/s/e;

    .line 3022
    iget v2, v2, Lcom/piriform/ccleaner/s/e;->a:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    move v2, v0

    .line 82
    :goto_0
    if-nez v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    .line 3022
    goto :goto_0

    :cond_1
    move v0, v1

    .line 82
    goto :goto_1
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/piriform/ccleaner/s/a;->e:Lcom/piriform/ccleaner/s/e;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/s/e;->a()Z

    move-result v0

    return v0
.end method

.method public final b()Z
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/piriform/ccleaner/s/a;->e:Lcom/piriform/ccleaner/s/e;

    .line 1018
    iget v0, v0, Lcom/piriform/ccleaner/s/e;->a:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 44
    goto :goto_0
.end method

.method public final c()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 49
    iget-object v2, p0, Lcom/piriform/ccleaner/s/a;->h:Lcom/piriform/ccleaner/s/i;

    .line 1019
    const-string/jumbo v3, "android.permission.CLEAR_APP_CACHE"

    .line 1027
    iget-object v2, v2, Lcom/piriform/ccleaner/s/i;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    move v2, v0

    .line 49
    :goto_0
    if-nez v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    .line 1027
    goto :goto_0

    :cond_1
    move v0, v1

    .line 49
    goto :goto_1
.end method

.method public final d()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 54
    iget-object v2, p0, Lcom/piriform/ccleaner/s/a;->e:Lcom/piriform/ccleaner/s/e;

    .line 1034
    iget v2, v2, Lcom/piriform/ccleaner/s/e;->a:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_3

    move v2, v1

    .line 54
    :goto_0
    if-nez v2, :cond_0

    .line 1058
    invoke-virtual {p0}, Lcom/piriform/ccleaner/s/a;->c()Z

    move-result v2

    if-nez v2, :cond_4

    move v2, v1

    .line 54
    :goto_1
    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/piriform/ccleaner/s/a;->m()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    return v0

    :cond_3
    move v2, v0

    .line 1034
    goto :goto_0

    :cond_4
    move v2, v0

    .line 1058
    goto :goto_1
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/piriform/ccleaner/s/a;->e:Lcom/piriform/ccleaner/s/e;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/s/e;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Z
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/piriform/ccleaner/s/a;->h:Lcom/piriform/ccleaner/s/i;

    .line 2023
    iget-object v0, v0, Lcom/piriform/ccleaner/s/i;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "android.hardware.telephony"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 68
    return v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/piriform/ccleaner/s/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/piriform/ccleaner/s/a;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/piriform/ccleaner/s/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/piriform/ccleaner/s/a;->t()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()Z
    .locals 2

    .prologue
    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/piriform/ccleaner/s/a;->g:Lcom/piriform/ccleaner/m/m;

    const-string/jumbo v1, "com.google.android.apps.maps"

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/m/m;->b(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 91
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j()Z
    .locals 2

    .prologue
    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/piriform/ccleaner/s/a;->g:Lcom/piriform/ccleaner/m/m;

    const-string/jumbo v1, "com.android.vending"

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/m/m;->b(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 100
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()Z
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/piriform/ccleaner/s/a;->t()Z

    move-result v0

    return v0
.end method

.method public final l()Z
    .locals 1

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/piriform/ccleaner/s/a;->t()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final m()Z
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/piriform/ccleaner/s/a;->f:Lcom/piriform/ccleaner/s/j;

    invoke-interface {v0}, Lcom/piriform/ccleaner/s/j;->m()Z

    move-result v0

    return v0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    sget-object v0, Lcom/piriform/ccleaner/s/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final o()Ljava/lang/String;
    .locals 2

    .prologue
    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/piriform/ccleaner/s/a;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/piriform/ccleaner/s/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/piriform/ccleaner/s/a;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lcom/piriform/ccleaner/s/a;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/piriform/ccleaner/s/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final q()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 135
    iget-object v1, p0, Lcom/piriform/ccleaner/s/a;->h:Lcom/piriform/ccleaner/s/i;

    .line 3033
    iget-object v1, v1, Lcom/piriform/ccleaner/s/i;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/b/b;->a(Landroid/content/Context;)[Ljava/io/File;

    move-result-object v1

    array-length v1, v1

    if-le v1, v0, :cond_0

    .line 135
    :goto_0
    if-eqz v0, :cond_1

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/piriform/ccleaner/s/a;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/piriform/ccleaner/s/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-sdcard"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    :goto_1
    return-object v0

    .line 3033
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 138
    :cond_1
    sget-object v0, Lcom/piriform/ccleaner/s/a;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/piriform/ccleaner/s/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public final r()Ljava/lang/String;
    .locals 2

    .prologue
    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "api_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/piriform/ccleaner/s/a;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    const-string/jumbo v0, "v1.22.96"

    return-object v0
.end method
