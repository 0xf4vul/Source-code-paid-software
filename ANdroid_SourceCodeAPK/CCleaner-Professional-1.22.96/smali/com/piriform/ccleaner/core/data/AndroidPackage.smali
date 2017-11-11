.class public Lcom/piriform/ccleaner/core/data/AndroidPackage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/piriform/ccleaner/core/data/AndroidPackage$c;,
        Lcom/piriform/ccleaner/core/data/AndroidPackage$a;,
        Lcom/piriform/ccleaner/core/data/AndroidPackage$b;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/piriform/ccleaner/core/data/AndroidPackage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Landroid/content/pm/ApplicationInfo;

.field public e:J

.field public f:J

.field public g:J

.field public h:Z

.field public i:J

.field public j:J

.field public k:J

.field public l:J

.field public m:J

.field private final n:I

.field private o:J

.field private p:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 326
    new-instance v0, Lcom/piriform/ccleaner/core/data/AndroidPackage$1;

    invoke-direct {v0}, Lcom/piriform/ccleaner/core/data/AndroidPackage$1;-><init>()V

    sput-object v0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->p:Ljava/lang/String;

    .line 308
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->a:Ljava/lang/String;

    .line 309
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->b:Ljava/lang/String;

    .line 310
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->c:Ljava/lang/String;

    .line 311
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->n:I

    .line 312
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->e:J

    .line 313
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->f:J

    .line 314
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->g:J

    .line 315
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->o:J

    .line 316
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->p:Ljava/lang/String;

    .line 317
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->h:Z

    .line 318
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->i:J

    .line 319
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->j:J

    .line 320
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->k:J

    .line 321
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->l:J

    .line 322
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->m:J

    .line 323
    const-class v0, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->d:Landroid/content/pm/ApplicationInfo;

    .line 324
    return-void

    .line 317
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/piriform/ccleaner/core/data/AndroidPackage;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/pm/PackageInfo;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 84
    iget-object v2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v3, p2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget v4, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    iget-object v5, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/piriform/ccleaner/core/data/AndroidPackage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)V

    .line 85
    iget-wide v0, p2, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iput-wide v0, p0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->o:J

    .line 87
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    .line 88
    if-eq v0, v6, :cond_0

    const/16 v1, 0x80

    if-ne v0, v1, :cond_1

    .line 89
    :cond_0
    iput-boolean v6, p0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->h:Z

    .line 92
    :cond_1
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)V
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->p:Ljava/lang/String;

    .line 95
    iput-object p1, p0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->a:Ljava/lang/String;

    .line 96
    iput-object p2, p0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->b:Ljava/lang/String;

    .line 97
    iput-object p3, p0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->c:Ljava/lang/String;

    .line 98
    iput p4, p0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->n:I

    .line 99
    iput-object p5, p0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->d:Landroid/content/pm/ApplicationInfo;

    .line 100
    return-void
.end method

.method static synthetic a(Lcom/piriform/ccleaner/core/data/AndroidPackage;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()J
    .locals 4

    .prologue
    .line 139
    iget-wide v0, p0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->f:J

    iget-wide v2, p0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->g:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->e:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->k:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->l:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->m:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->j:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->i:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final b()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 214
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 1231
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "package:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 214
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    .line 215
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public final c()J
    .locals 4

    .prologue
    .line 219
    iget-wide v0, p0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->e:J

    iget-wide v2, p0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->k:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 284
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 247
    if-ne p0, p1, :cond_1

    .line 255
    :cond_0
    :goto_0
    return v0

    .line 250
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 251
    goto :goto_0

    .line 254
    :cond_3
    check-cast p1, Lcom/piriform/ccleaner/core/data/AndroidPackage;

    .line 255
    iget-object v2, p0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->b:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/piriform/ccleaner/core/data/AndroidPackage;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    iget-object v2, p0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->b:Ljava/lang/String;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/piriform/ccleaner/core/data/AndroidPackage;->b:Ljava/lang/String;

    if-eqz v2, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "AndroidPackage{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 267
    const-string/jumbo v1, "applicationName=\'"

    .line 268
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->a:Ljava/lang/String;

    .line 269
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\', packageName=\'"

    .line 270
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->b:Ljava/lang/String;

    .line 271
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\', versionName=\'"

    .line 272
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->c:Ljava/lang/String;

    .line 273
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\', systemApp=\'"

    .line 274
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->h:Z

    .line 275
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\', apkPath=\'"

    .line 276
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->d:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 277
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'}"

    .line 278
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 289
    iget-object v0, p0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 292
    iget v0, p0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->n:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    iget-wide v2, p0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->e:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 294
    iget-wide v2, p0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->f:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 295
    iget-wide v2, p0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->g:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 296
    iget-wide v2, p0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->o:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 297
    iget-object v0, p0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 298
    iget-boolean v0, p0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 299
    iget-wide v2, p0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->i:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 300
    iget-wide v2, p0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->j:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 301
    iget-wide v2, p0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->k:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 302
    iget-wide v2, p0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->l:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 303
    iget-wide v2, p0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->m:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 304
    iget-object v0, p0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->d:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 305
    return-void

    :cond_0
    move v0, v1

    .line 298
    goto :goto_0
.end method
