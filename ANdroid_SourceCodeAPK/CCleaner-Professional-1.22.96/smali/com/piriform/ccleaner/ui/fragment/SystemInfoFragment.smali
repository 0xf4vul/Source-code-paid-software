.class public Lcom/piriform/ccleaner/ui/fragment/SystemInfoFragment;
.super Landroid/support/v4/app/h;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/t/a/b$a;
.implements Lcom/piriform/ccleaner/t/o;


# instance fields
.field a:Lcom/piriform/ccleaner/s/h;

.field b:Lcom/piriform/ccleaner/t/p;

.field private final c:Lcom/piriform/ccleaner/core/a/j;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Lcom/piriform/ccleaner/t/u;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/piriform/ccleaner/core/a/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/support/v4/app/h;-><init>()V

    .line 35
    new-instance v0, Lcom/piriform/ccleaner/core/a/j;

    invoke-direct {v0}, Lcom/piriform/ccleaner/core/a/j;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/SystemInfoFragment;->c:Lcom/piriform/ccleaner/core/a/j;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/SystemInfoFragment;->d:Ljava/util/Map;

    return-void
.end method

.method private a(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/t/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lcom/piriform/ccleaner/ui/fragment/SystemInfoFragment;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 79
    new-instance v1, Lcom/piriform/ccleaner/t/a/a;

    invoke-direct {v1, v0, p2}, Lcom/piriform/ccleaner/t/a/a;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 80
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/SystemInfoFragment;->c:Lcom/piriform/ccleaner/core/a/j;

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/core/a/j;->a(Lcom/piriform/ccleaner/core/a/b;)V

    .line 81
    return-void
.end method

.method private a(Lcom/piriform/ccleaner/t/u;)V
    .locals 3

    .prologue
    .line 84
    new-instance v0, Lcom/piriform/ccleaner/t/a/b;

    invoke-direct {v0, p1, p0}, Lcom/piriform/ccleaner/t/a/b;-><init>(Lcom/piriform/ccleaner/t/u;Lcom/piriform/ccleaner/t/a/b$a;)V

    .line 15091
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/fragment/SystemInfoFragment;->a:Lcom/piriform/ccleaner/s/h;

    invoke-interface {v1}, Lcom/piriform/ccleaner/s/h;->e()Z

    move-result v1

    .line 15142
    iput-boolean v1, v0, Lcom/piriform/ccleaner/t/a/b;->d:Z

    .line 86
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/fragment/SystemInfoFragment;->d:Ljava/util/Map;

    .line 16031
    iget-object v2, p1, Lcom/piriform/ccleaner/t/u;->e:Ljava/util/UUID;

    .line 86
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/fragment/SystemInfoFragment;->c:Lcom/piriform/ccleaner/core/a/j;

    invoke-virtual {v1, v0}, Lcom/piriform/ccleaner/core/a/j;->a(Lcom/piriform/ccleaner/core/a/b;)V

    .line 88
    return-void
.end method

.method private b()V
    .locals 15

    .prologue
    .line 64
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/SystemInfoFragment;->c:Lcom/piriform/ccleaner/core/a/j;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/core/a/j;->a()V

    .line 66
    const v1, 0x7f0800a0

    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/SystemInfoFragment;->b:Lcom/piriform/ccleaner/t/p;

    .line 1032
    iget-object v0, v0, Lcom/piriform/ccleaner/t/p;->a:Lcom/piriform/ccleaner/t/s;

    .line 1068
    iget-object v2, v0, Lcom/piriform/ccleaner/t/s;->d:Lcom/piriform/ccleaner/t/e;

    .line 2017
    iget-object v3, v2, Lcom/piriform/ccleaner/t/e;->a:Lcom/piriform/ccleaner/t/c;

    .line 2026
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2027
    const v0, 0x7f080060

    invoke-static {}, Lcom/piriform/ccleaner/t/d;->a()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0200f2

    invoke-virtual {v3, v0, v5, v6}, Lcom/piriform/ccleaner/t/c;->a(ILjava/lang/String;I)Lcom/piriform/ccleaner/t/b;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2028
    const v0, 0x7f08012e

    .line 2056
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    .line 2057
    const-wide/16 v8, 0xe10

    div-long v8, v6, v8

    .line 2058
    const-wide/16 v10, 0xe10

    rem-long v10, v6, v10

    const-wide/16 v12, 0x3c

    div-long/2addr v10, v12

    .line 2059
    const-wide/16 v12, 0x3c

    rem-long/2addr v6, v12

    .line 2060
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v12, "%d:%02d:%02d"

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v13, v14

    const/4 v8, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v13, v8

    const/4 v8, 0x2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v13, v8

    invoke-static {v5, v12, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 2028
    const v6, 0x7f020100

    invoke-virtual {v3, v0, v5, v6}, Lcom/piriform/ccleaner/t/c;->a(ILjava/lang/String;I)Lcom/piriform/ccleaner/t/b;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2029
    iget-object v0, v3, Lcom/piriform/ccleaner/t/c;->a:Lcom/piriform/ccleaner/t/d;

    .line 2064
    iget-object v0, v0, Lcom/piriform/ccleaner/t/d;->a:Ljava/lang/String;

    .line 2029
    if-eqz v0, :cond_0

    .line 2030
    const v0, 0x7f080104

    iget-object v5, v3, Lcom/piriform/ccleaner/t/c;->a:Lcom/piriform/ccleaner/t/d;

    .line 3064
    iget-object v5, v5, Lcom/piriform/ccleaner/t/d;->a:Ljava/lang/String;

    .line 2030
    const v6, 0x7f0200f8

    invoke-virtual {v3, v0, v5, v6}, Lcom/piriform/ccleaner/t/c;->a(ILjava/lang/String;I)Lcom/piriform/ccleaner/t/b;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2032
    :cond_0
    const v0, 0x7f0800a1

    .line 3068
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2032
    const v6, 0x7f0200f7

    invoke-virtual {v3, v0, v5, v6}, Lcom/piriform/ccleaner/t/c;->a(ILjava/lang/String;I)Lcom/piriform/ccleaner/t/b;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2033
    const v5, 0x7f0800f2

    iget-object v0, v3, Lcom/piriform/ccleaner/t/c;->b:Lcom/piriform/ccleaner/s/j;

    invoke-interface {v0}, Lcom/piriform/ccleaner/s/j;->m()Z

    move-result v0

    .line 4046
    iget-object v6, v3, Lcom/piriform/ccleaner/t/c;->c:Landroid/content/Context;

    if-eqz v0, :cond_7

    const v0, 0x7f08013d

    :goto_0
    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2033
    const v6, 0x7f0200fd

    invoke-virtual {v3, v5, v0, v6}, Lcom/piriform/ccleaner/t/c;->a(ILjava/lang/String;I)Lcom/piriform/ccleaner/t/b;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5022
    iget-object v0, v2, Lcom/piriform/ccleaner/t/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5023
    iget-object v0, v2, Lcom/piriform/ccleaner/t/e;->b:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2018
    iget-object v0, v2, Lcom/piriform/ccleaner/t/e;->b:Ljava/util/List;

    .line 66
    invoke-direct {p0, v1, v0}, Lcom/piriform/ccleaner/ui/fragment/SystemInfoFragment;->a(ILjava/util/List;)V

    .line 68
    const v2, 0x7f0800d0

    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/SystemInfoFragment;->b:Lcom/piriform/ccleaner/t/p;

    .line 5037
    iget-object v0, v0, Lcom/piriform/ccleaner/t/p;->a:Lcom/piriform/ccleaner/t/s;

    .line 5072
    iget-object v3, v0, Lcom/piriform/ccleaner/t/s;->e:Lcom/piriform/ccleaner/t/k;

    .line 6017
    iget-object v4, v3, Lcom/piriform/ccleaner/t/k;->a:Lcom/piriform/ccleaner/t/i;

    .line 6023
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 6052
    iget-object v0, v4, Lcom/piriform/ccleaner/t/i;->b:Lcom/piriform/ccleaner/t/j;

    .line 6096
    iget-object v0, v0, Lcom/piriform/ccleaner/t/j;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    .line 6053
    if-eqz v1, :cond_8

    const v0, 0x7f020101

    .line 6054
    :goto_1
    new-instance v6, Lcom/piriform/ccleaner/t/b;

    iget-object v7, v4, Lcom/piriform/ccleaner/t/i;->a:Landroid/content/Context;

    const v8, 0x7f08013c

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v1}, Lcom/piriform/ccleaner/t/i;->a(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v7, v1, v0}, Lcom/piriform/ccleaner/t/b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 6055
    iget-object v0, v4, Lcom/piriform/ccleaner/t/i;->b:Lcom/piriform/ccleaner/t/j;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/t/j;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v4, Lcom/piriform/ccleaner/t/i;->b:Lcom/piriform/ccleaner/t/j;

    .line 7170
    iget-object v1, v0, Lcom/piriform/ccleaner/t/j;->d:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 6180
    invoke-virtual {v0}, Lcom/piriform/ccleaner/t/j;->c()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    .line 6055
    :goto_2
    if-eqz v0, :cond_2

    .line 6056
    iget-object v0, v4, Lcom/piriform/ccleaner/t/i;->a:Landroid/content/Context;

    const v1, 0x7f08013b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v4, Lcom/piriform/ccleaner/t/i;->b:Lcom/piriform/ccleaner/t/j;

    .line 8135
    iget-object v0, v0, Lcom/piriform/ccleaner/t/j;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 8137
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 8142
    const-string/jumbo v7, "\""

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string/jumbo v7, "\""

    invoke-virtual {v0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 8143
    const/4 v7, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 6056
    :cond_1
    invoke-virtual {v6, v1, v0}, Lcom/piriform/ccleaner/t/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6057
    iget-object v0, v4, Lcom/piriform/ccleaner/t/i;->a:Landroid/content/Context;

    const v1, 0x7f0800c1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v4, Lcom/piriform/ccleaner/t/i;->b:Lcom/piriform/ccleaner/t/j;

    invoke-virtual {v1}, Lcom/piriform/ccleaner/t/j;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/piriform/ccleaner/t/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6059
    :cond_2
    iget-object v0, v4, Lcom/piriform/ccleaner/t/i;->a:Landroid/content/Context;

    const v1, 0x7f0800c4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v4, Lcom/piriform/ccleaner/t/i;->b:Lcom/piriform/ccleaner/t/j;

    .line 9130
    iget-object v1, v1, Lcom/piriform/ccleaner/t/j;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 9131
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    .line 6059
    invoke-virtual {v6, v0, v1}, Lcom/piriform/ccleaner/t/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6026
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10042
    iget-object v0, v4, Lcom/piriform/ccleaner/t/i;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 10043
    const-string/jumbo v1, "android.hardware.bluetooth"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 6028
    if-eqz v0, :cond_4

    .line 10064
    iget-object v0, v4, Lcom/piriform/ccleaner/t/i;->b:Lcom/piriform/ccleaner/t/j;

    .line 10100
    iget-object v1, v0, Lcom/piriform/ccleaner/t/j;->b:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_a

    .line 10102
    iget-object v0, v0, Lcom/piriform/ccleaner/t/j;->b:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 10103
    const/4 v0, 0x1

    move v1, v0

    .line 10065
    :goto_3
    if-eqz v1, :cond_b

    const v0, 0x7f0200f4

    .line 10066
    :goto_4
    new-instance v6, Lcom/piriform/ccleaner/t/b;

    iget-object v7, v4, Lcom/piriform/ccleaner/t/i;->a:Landroid/content/Context;

    const v8, 0x7f08007a

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v1}, Lcom/piriform/ccleaner/t/i;->a(Z)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8, v0}, Lcom/piriform/ccleaner/t/b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 10067
    if-eqz v1, :cond_3

    .line 10068
    iget-object v0, v4, Lcom/piriform/ccleaner/t/i;->a:Landroid/content/Context;

    const v1, 0x7f080076

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v4, Lcom/piriform/ccleaner/t/i;->b:Lcom/piriform/ccleaner/t/j;

    .line 10126
    iget-object v1, v1, Lcom/piriform/ccleaner/t/j;->b:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 10068
    invoke-virtual {v6, v0, v1}, Lcom/piriform/ccleaner/t/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6030
    :cond_3
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11047
    :cond_4
    iget-object v0, v4, Lcom/piriform/ccleaner/t/i;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 11048
    const-string/jumbo v1, "android.hardware.telephony"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 6033
    if-eqz v0, :cond_6

    .line 11074
    iget-object v0, v4, Lcom/piriform/ccleaner/t/i;->b:Lcom/piriform/ccleaner/t/j;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/t/j;->a()Z

    move-result v1

    .line 11075
    if-eqz v1, :cond_c

    const v0, 0x7f0200fa

    .line 11076
    :goto_5
    new-instance v6, Lcom/piriform/ccleaner/t/b;

    iget-object v7, v4, Lcom/piriform/ccleaner/t/i;->a:Landroid/content/Context;

    const v8, 0x7f0800ce

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v1}, Lcom/piriform/ccleaner/t/i;->a(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v7, v1, v0}, Lcom/piriform/ccleaner/t/b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 11077
    iget-object v0, v4, Lcom/piriform/ccleaner/t/i;->a:Landroid/content/Context;

    const v1, 0x7f0800d1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v4, Lcom/piriform/ccleaner/t/i;->b:Lcom/piriform/ccleaner/t/j;

    .line 12054
    iget-object v7, v0, Lcom/piriform/ccleaner/t/j;->e:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v7

    .line 12055
    packed-switch v7, :pswitch_data_0

    .line 12090
    iget-object v0, v0, Lcom/piriform/ccleaner/t/j;->a:Landroid/content/res/Resources;

    const v7, 0x7f08012d

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 11077
    :goto_6
    invoke-virtual {v6, v1, v0}, Lcom/piriform/ccleaner/t/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 11078
    iget-object v0, v4, Lcom/piriform/ccleaner/t/i;->b:Lcom/piriform/ccleaner/t/j;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/t/j;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v4, Lcom/piriform/ccleaner/t/i;->b:Lcom/piriform/ccleaner/t/j;

    .line 13170
    iget-object v1, v0, Lcom/piriform/ccleaner/t/j;->d:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 12185
    invoke-virtual {v0}, Lcom/piriform/ccleaner/t/j;->c()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x1

    .line 11078
    :goto_7
    if-eqz v0, :cond_5

    .line 11079
    iget-object v0, v4, Lcom/piriform/ccleaner/t/i;->a:Landroid/content/Context;

    const v1, 0x7f0800c1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v4, Lcom/piriform/ccleaner/t/i;->b:Lcom/piriform/ccleaner/t/j;

    invoke-virtual {v1}, Lcom/piriform/ccleaner/t/j;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/piriform/ccleaner/t/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6035
    :cond_5
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14022
    :cond_6
    iget-object v0, v3, Lcom/piriform/ccleaner/t/k;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 14023
    iget-object v0, v3, Lcom/piriform/ccleaner/t/k;->b:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6018
    iget-object v0, v3, Lcom/piriform/ccleaner/t/k;->b:Ljava/util/List;

    .line 68
    invoke-direct {p0, v2, v0}, Lcom/piriform/ccleaner/ui/fragment/SystemInfoFragment;->a(ILjava/util/List;)V

    .line 70
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/SystemInfoFragment;->b:Lcom/piriform/ccleaner/t/p;

    .line 14027
    iget-object v0, v0, Lcom/piriform/ccleaner/t/p;->a:Lcom/piriform/ccleaner/t/s;

    .line 14064
    iget-object v0, v0, Lcom/piriform/ccleaner/t/s;->c:Lcom/piriform/ccleaner/t/y;

    .line 14093
    iget-object v0, v0, Lcom/piriform/ccleaner/t/y;->e:Ljava/util/List;

    .line 70
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/t/u;

    .line 71
    invoke-direct {p0, v0}, Lcom/piriform/ccleaner/ui/fragment/SystemInfoFragment;->a(Lcom/piriform/ccleaner/t/u;)V

    goto :goto_8

    .line 4046
    :cond_7
    const v0, 0x7f0800d2

    goto/16 :goto_0

    .line 6053
    :cond_8
    const v0, 0x7f020102

    goto/16 :goto_1

    .line 6180
    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 10105
    :cond_a
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_3

    .line 10065
    :cond_b
    const v0, 0x7f0200f5

    goto/16 :goto_4

    .line 11075
    :cond_c
    const v0, 0x7f0200f9

    goto/16 :goto_5

    .line 12057
    :pswitch_0
    const-string/jumbo v0, "1xRTT"

    goto :goto_6

    .line 12059
    :pswitch_1
    const-string/jumbo v0, "CDMA"

    goto/16 :goto_6

    .line 12061
    :pswitch_2
    const-string/jumbo v0, "EDGE"

    goto/16 :goto_6

    .line 12063
    :pswitch_3
    const-string/jumbo v0, "eHRPD"

    goto/16 :goto_6

    .line 12065
    :pswitch_4
    const-string/jumbo v0, "EVDO rev. 0"

    goto/16 :goto_6

    .line 12067
    :pswitch_5
    const-string/jumbo v0, "EVDO rev. A"

    goto/16 :goto_6

    .line 12069
    :pswitch_6
    const-string/jumbo v0, "EVDO rev. B"

    goto/16 :goto_6

    .line 12071
    :pswitch_7
    const-string/jumbo v0, "GPRS"

    goto/16 :goto_6

    .line 12073
    :pswitch_8
    const-string/jumbo v0, "HSDPA"

    goto/16 :goto_6

    .line 12075
    :pswitch_9
    const-string/jumbo v0, "HSPA"

    goto/16 :goto_6

    .line 12077
    :pswitch_a
    const-string/jumbo v0, "HSPA+"

    goto/16 :goto_6

    .line 12079
    :pswitch_b
    const-string/jumbo v0, "HSUPA"

    goto/16 :goto_6

    .line 12081
    :pswitch_c
    const-string/jumbo v0, "iDen"

    goto/16 :goto_6

    .line 12083
    :pswitch_d
    const-string/jumbo v0, "LTE"

    goto/16 :goto_6

    .line 12085
    :pswitch_e
    const-string/jumbo v0, "UMTS"

    goto/16 :goto_6

    .line 12087
    :pswitch_f
    const-string/jumbo v0, "GSM"

    goto/16 :goto_6

    .line 12185
    :cond_d
    const/4 v0, 0x0

    goto/16 :goto_7

    .line 74
    :cond_e
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/SystemInfoFragment;->c:Lcom/piriform/ccleaner/core/a/j;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/core/a/j;->c()V

    .line 75
    return-void

    .line 12055
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_2
        :pswitch_e
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_8
        :pswitch_b
        :pswitch_9
        :pswitch_c
        :pswitch_6
        :pswitch_d
        :pswitch_3
        :pswitch_a
        :pswitch_f
    .end packed-switch
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    .line 49
    const v0, 0x7f03004c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 1016
    const v0, 0x7f1000ed

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 50
    check-cast v0, Landroid/widget/ListView;

    .line 51
    new-instance v2, Lcom/piriform/ccleaner/core/a/i;

    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/SystemInfoFragment;->g()Landroid/support/v4/app/i;

    move-result-object v3

    iget-object v4, p0, Lcom/piriform/ccleaner/ui/fragment/SystemInfoFragment;->c:Lcom/piriform/ccleaner/core/a/j;

    invoke-direct {v2, v3, v4}, Lcom/piriform/ccleaner/core/a/i;-><init>(Landroid/content/Context;Lcom/piriform/ccleaner/core/a/j;)V

    iput-object v2, p0, Lcom/piriform/ccleaner/ui/fragment/SystemInfoFragment;->e:Lcom/piriform/ccleaner/core/a/i;

    .line 52
    iget-object v2, p0, Lcom/piriform/ccleaner/ui/fragment/SystemInfoFragment;->e:Lcom/piriform/ccleaner/core/a/i;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 53
    return-object v1
.end method

.method public final a()V
    .locals 3

    .prologue
    .line 125
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/SystemInfoFragment;->g()Landroid/support/v4/app/i;

    move-result-object v1

    const-class v2, Lcom/piriform/ccleaner/ui/activity/CleanProcessesActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 16937
    iget-object v1, p0, Landroid/support/v4/app/h;->A:Landroid/support/v4/app/l;

    if-nez v1, :cond_0

    .line 16938
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16940
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/h;->A:Landroid/support/v4/app/l;

    const/4 v2, -0x1

    invoke-virtual {v1, p0, v0, v2}, Landroid/support/v4/app/l;->a(Landroid/support/v4/app/h;Landroid/content/Intent;I)V

    .line 126
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/support/v4/app/h;->a(Landroid/os/Bundle;)V

    .line 44
    invoke-static {}, Lcom/piriform/ccleaner/CCleanerApplication;->a()Lcom/piriform/ccleaner/j/bl;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/piriform/ccleaner/j/bl;->a(Lcom/piriform/ccleaner/ui/fragment/SystemInfoFragment;)V

    .line 45
    return-void
.end method

.method public final a(Lcom/piriform/ccleaner/t/s;Lcom/piriform/ccleaner/t/u;)V
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0, p2}, Lcom/piriform/ccleaner/ui/fragment/SystemInfoFragment;->a(Lcom/piriform/ccleaner/t/u;)V

    .line 109
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/SystemInfoFragment;->c:Lcom/piriform/ccleaner/core/a/j;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/core/a/j;->c()V

    .line 110
    return-void
.end method

.method public final a(Lcom/piriform/ccleaner/t/s;Ljava/util/UUID;)V
    .locals 3

    .prologue
    .line 114
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/SystemInfoFragment;->c:Lcom/piriform/ccleaner/core/a/j;

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/fragment/SystemInfoFragment;->c:Lcom/piriform/ccleaner/core/a/j;

    iget-object v2, p0, Lcom/piriform/ccleaner/ui/fragment/SystemInfoFragment;->d:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/piriform/ccleaner/core/a/j;->a(Ljava/lang/Object;)Lcom/piriform/ccleaner/core/a/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/core/a/j;->b(Lcom/piriform/ccleaner/core/a/b;)V

    .line 115
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/SystemInfoFragment;->c:Lcom/piriform/ccleaner/core/a/j;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/core/a/j;->c()V

    .line 116
    return-void
.end method

.method public final a(Lcom/piriform/ccleaner/t/s;Ljava/util/UUID;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/piriform/ccleaner/t/s;",
            "Ljava/util/UUID;",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/t/x$b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/fragment/SystemInfoFragment;->b()V

    .line 121
    return-void
.end method

.method public final c(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/support/v4/app/h;->c(Landroid/os/Bundle;)V

    .line 60
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/fragment/SystemInfoFragment;->b()V

    .line 61
    return-void
.end method

.method public final q()V
    .locals 1

    .prologue
    .line 96
    invoke-super {p0}, Landroid/support/v4/app/h;->q()V

    .line 97
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/SystemInfoFragment;->b:Lcom/piriform/ccleaner/t/p;

    invoke-virtual {v0, p0}, Lcom/piriform/ccleaner/t/p;->a(Lcom/piriform/ccleaner/t/o;)V

    .line 98
    return-void
.end method

.method public final r()V
    .locals 1

    .prologue
    .line 102
    invoke-super {p0}, Landroid/support/v4/app/h;->r()V

    .line 103
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/SystemInfoFragment;->b:Lcom/piriform/ccleaner/t/p;

    invoke-virtual {v0, p0}, Lcom/piriform/ccleaner/t/p;->b(Lcom/piriform/ccleaner/t/o;)V

    .line 104
    return-void
.end method
