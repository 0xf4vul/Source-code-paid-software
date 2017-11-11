.class public final Lcom/piriform/ccleaner/j/av;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/a/b",
        "<",
        "Lcom/piriform/ccleaner/t/s;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Lcom/piriform/ccleaner/j/g;

.field private final c:Ljavax/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/a/a",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljavax/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/s/j;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljavax/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/s/k;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljavax/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/f/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/piriform/ccleaner/j/av;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/piriform/ccleaner/j/av;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/piriform/ccleaner/j/g;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/piriform/ccleaner/j/g;",
            "Ljavax/a/a",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/s/j;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/s/k;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/f/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget-boolean v0, Lcom/piriform/ccleaner/j/av;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 36
    :cond_0
    iput-object p1, p0, Lcom/piriform/ccleaner/j/av;->b:Lcom/piriform/ccleaner/j/g;

    .line 37
    sget-boolean v0, Lcom/piriform/ccleaner/j/av;->a:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 38
    :cond_1
    iput-object p2, p0, Lcom/piriform/ccleaner/j/av;->c:Ljavax/a/a;

    .line 39
    sget-boolean v0, Lcom/piriform/ccleaner/j/av;->a:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 40
    :cond_2
    iput-object p3, p0, Lcom/piriform/ccleaner/j/av;->d:Ljavax/a/a;

    .line 41
    sget-boolean v0, Lcom/piriform/ccleaner/j/av;->a:Z

    if-nez v0, :cond_3

    if-nez p4, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 42
    :cond_3
    iput-object p4, p0, Lcom/piriform/ccleaner/j/av;->e:Ljavax/a/a;

    .line 43
    sget-boolean v0, Lcom/piriform/ccleaner/j/av;->a:Z

    if-nez v0, :cond_4

    if-nez p5, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 44
    :cond_4
    iput-object p5, p0, Lcom/piriform/ccleaner/j/av;->f:Ljavax/a/a;

    .line 45
    return-void
.end method

.method public static a(Lcom/piriform/ccleaner/j/g;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;)La/a/b;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/piriform/ccleaner/j/g;",
            "Ljavax/a/a",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/s/j;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/s/k;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/f/d;",
            ">;)",
            "La/a/b",
            "<",
            "Lcom/piriform/ccleaner/t/s;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    new-instance v0, Lcom/piriform/ccleaner/j/av;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/piriform/ccleaner/j/av;-><init>(Lcom/piriform/ccleaner/j/g;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 13

    .prologue
    .line 13
    .line 1049
    iget-object v9, p0, Lcom/piriform/ccleaner/j/av;->b:Lcom/piriform/ccleaner/j/g;

    iget-object v0, p0, Lcom/piriform/ccleaner/j/av;->c:Ljavax/a/a;

    .line 1051
    invoke-interface {v0}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/piriform/ccleaner/j/av;->d:Ljavax/a/a;

    .line 1052
    invoke-interface {v1}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/piriform/ccleaner/s/j;

    iget-object v1, p0, Lcom/piriform/ccleaner/j/av;->e:Ljavax/a/a;

    .line 1053
    invoke-interface {v1}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/piriform/ccleaner/s/k;

    iget-object v1, p0, Lcom/piriform/ccleaner/j/av;->f:Ljavax/a/a;

    .line 1054
    invoke-interface {v1}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/piriform/ccleaner/f/d;

    .line 1208
    new-instance v10, Lcom/piriform/ccleaner/t/t;

    invoke-direct {v10, v0}, Lcom/piriform/ccleaner/t/t;-><init>(Landroid/content/Context;)V

    .line 2022
    const-string/jumbo v1, "phone"

    .line 2023
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 2025
    new-instance v11, Lcom/piriform/ccleaner/t/d;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v11, v1}, Lcom/piriform/ccleaner/t/d;-><init>(Ljava/lang/String;)V

    .line 2034
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2035
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    .line 2036
    const-string/jumbo v3, "wifi"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 2037
    const-string/jumbo v4, "connectivity"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 2038
    const-string/jumbo v5, "phone"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 2040
    new-instance v0, Lcom/piriform/ccleaner/t/j;

    invoke-direct/range {v0 .. v5}, Lcom/piriform/ccleaner/t/j;-><init>(Landroid/content/res/Resources;Landroid/bluetooth/BluetoothAdapter;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Landroid/telephony/TelephonyManager;)V

    .line 1212
    new-instance v1, Lcom/piriform/ccleaner/t/l;

    invoke-direct {v1}, Lcom/piriform/ccleaner/t/l;-><init>()V

    .line 1213
    new-instance v2, Lcom/piriform/ccleaner/t/a;

    iget-object v3, v9, Lcom/piriform/ccleaner/j/g;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/piriform/ccleaner/t/a;-><init>(Landroid/content/Context;)V

    .line 1214
    new-instance v3, Lcom/piriform/ccleaner/t/m;

    invoke-direct {v3, v1, v2}, Lcom/piriform/ccleaner/t/m;-><init>(Lcom/piriform/ccleaner/t/l;Lcom/piriform/ccleaner/t/a;)V

    .line 1215
    new-instance v4, Lcom/piriform/ccleaner/t/h;

    invoke-direct {v4, v1, v2}, Lcom/piriform/ccleaner/t/h;-><init>(Lcom/piriform/ccleaner/t/l;Lcom/piriform/ccleaner/t/a;)V

    .line 1216
    new-instance v2, Lcom/piriform/ccleaner/t/v;

    invoke-direct {v2, v3, v10, v4}, Lcom/piriform/ccleaner/t/v;-><init>(Lcom/piriform/ccleaner/t/m;Lcom/piriform/ccleaner/t/t;Lcom/piriform/ccleaner/t/h;)V

    .line 1218
    new-instance v12, Lcom/piriform/ccleaner/t/s;

    iget-object v1, v9, Lcom/piriform/ccleaner/j/g;->a:Landroid/content/Context;

    new-instance v3, Lcom/piriform/ccleaner/t/y;

    new-instance v4, Lcom/piriform/ccleaner/t/w;

    invoke-direct {v4}, Lcom/piriform/ccleaner/t/w;-><init>()V

    invoke-direct {v3, v4, v2, v7, v8}, Lcom/piriform/ccleaner/t/y;-><init>(Lcom/piriform/ccleaner/t/w;Lcom/piriform/ccleaner/t/v;Lcom/piriform/ccleaner/s/k;Lcom/piriform/ccleaner/f/d;)V

    new-instance v4, Lcom/piriform/ccleaner/t/e;

    new-instance v2, Lcom/piriform/ccleaner/t/c;

    iget-object v5, v9, Lcom/piriform/ccleaner/j/g;->a:Landroid/content/Context;

    invoke-direct {v2, v11, v6, v5}, Lcom/piriform/ccleaner/t/c;-><init>(Lcom/piriform/ccleaner/t/d;Lcom/piriform/ccleaner/s/j;Landroid/content/Context;)V

    invoke-direct {v4, v2}, Lcom/piriform/ccleaner/t/e;-><init>(Lcom/piriform/ccleaner/t/c;)V

    new-instance v5, Lcom/piriform/ccleaner/t/k;

    new-instance v2, Lcom/piriform/ccleaner/t/i;

    iget-object v6, v9, Lcom/piriform/ccleaner/j/g;->a:Landroid/content/Context;

    invoke-direct {v2, v6, v0}, Lcom/piriform/ccleaner/t/i;-><init>(Landroid/content/Context;Lcom/piriform/ccleaner/t/j;)V

    invoke-direct {v5, v2}, Lcom/piriform/ccleaner/t/k;-><init>(Lcom/piriform/ccleaner/t/i;)V

    move-object v0, v12

    move-object v2, v10

    invoke-direct/range {v0 .. v5}, Lcom/piriform/ccleaner/t/s;-><init>(Landroid/content/Context;Lcom/piriform/ccleaner/t/t;Lcom/piriform/ccleaner/t/y;Lcom/piriform/ccleaner/t/e;Lcom/piriform/ccleaner/t/k;)V

    .line 1050
    const-string/jumbo v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 1049
    invoke-static {v12, v0}, La/a/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/t/s;

    .line 13
    return-object v0
.end method
