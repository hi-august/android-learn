.class Lb;
.super Ljava/util/TimerTask;


# static fields
.field static final synthetic a:Z


# instance fields
.field final synthetic b:Landroid/os/Handler;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:La;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, La;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lb;->a:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method constructor <init>(La;Landroid/os/Handler;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lb;->d:La;

    iput-object p2, p0, Lb;->b:Landroid/os/Handler;

    iput-object p3, p0, Lb;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    invoke-static {}, Ldn;->a()Z

    move-result v9

    invoke-static {v9}, Ldn;->b(I)V

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-lt v0, v2, :cond_1c

    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lb;->b:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_1b
    return-void

    :cond_1c
    :try_start_1c
    new-instance v0, Le;

    invoke-direct {v0}, Le;-><init>()V

    iget-object v2, p0, Lb;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Le;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_26} :catch_3d

    move-result-object v5

    :try_start_27
    const-string v0, "sos"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    iget-object v0, p0, Lb;->b:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_35} :catch_36

    goto :goto_1b

    :catch_36
    move-exception v0

    iget-object v0, p0, Lb;->b:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1b

    :catch_3d
    move-exception v0

    iget-object v0, p0, Lb;->b:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1b

    :cond_45
    :try_start_45
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/zip/CRC32;->update([B)V

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v6

    long-to-int v0, v6

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_59} :catch_36

    :try_start_59
    const-string v0, "sha1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_5e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_59 .. :try_end_5e} :catch_71
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5e} :catch_36

    move-result-object v0

    :goto_5f
    :try_start_5f
    const-string v2, "AES"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_64
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5f .. :try_end_64} :catch_77
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_5f .. :try_end_64} :catch_7c
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_64} :catch_36

    move-result-object v1

    :goto_65
    :try_start_65
    sget-boolean v2, Lb;->a:Z

    if-nez v2, :cond_81

    if-nez v1, :cond_81

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :catch_71
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    move-object v0, v1

    goto :goto_5f

    :catch_77
    move-exception v2

    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_65

    :catch_7c
    move-exception v0

    invoke-virtual {v0}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_80} :catch_36

    goto :goto_1b

    :cond_81
    const/4 v2, 0x2

    :try_start_82
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    const-string v7, "GXiQHT1CZ2elMzwpvvAoPA=="

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v7

    const-string v8, "AES"

    invoke-direct {v6, v7, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v2, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_97
    .catch Ljava/security/InvalidKeyException; {:try_start_82 .. :try_end_97} :catch_1a0
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_97} :catch_36

    :goto_97
    const/4 v2, 0x0

    :try_start_98
    new-array v2, v2, [B
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_9a} :catch_36

    :try_start_9a
    const-string v6, "hjdsUjIT5je69WXIZP7Kzw=="

    const-string v7, "UTf-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v6

    invoke-virtual {v1, v6}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_aa
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_9a .. :try_end_aa} :catch_19d
    .catch Ljavax/crypto/BadPaddingException; {:try_start_9a .. :try_end_aa} :catch_19a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9a .. :try_end_aa} :catch_f9
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_aa} :catch_36

    move-result-object v1

    move-object v2, v1

    :goto_ac
    :try_start_ac
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v2}, Ljava/lang/String;-><init>([B)V

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v7, 0x0

    const/16 v8, 0x7f

    aput-byte v8, v1, v7

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v7, 0x0

    const/4 v8, 0x1

    aput-byte v8, v1, v7

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_cd} :catch_36

    :try_start_cd
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    const/4 v7, 0x0

    invoke-static {v0, v7}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_db
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_db} :catch_fe

    :try_start_db
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a5

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const-string v1, "2398lj2n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_104

    iget-object v0, p0, Lb;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1b

    :catch_f9
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_ac

    :catch_fe
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1b

    :cond_104
    const-string v0, "234"

    :goto_106
    const-string v1, "lsdf=="

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_116

    iget-object v0, p0, Lb;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1b

    :cond_116
    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v0, 0x0

    const/4 v6, 0x2

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v5, 0xf40

    if-le v0, v5, :cond_130

    iget-object v0, p0, Lb;->b:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1b

    :cond_130
    const/16 v5, 0xe22

    if-ne v0, v5, :cond_192

    const/4 v0, 0x0

    aget-char v0, v1, v0

    const/4 v5, 0x1

    aget-char v5, v1, v5

    add-int/2addr v0, v5

    const/16 v5, 0xa8

    if-ne v0, v5, :cond_192

    :cond_13f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-class v0, Le;

    const-class v6, Lf;

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lf;

    invoke-interface {v0}, Lf;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-class v0, La;

    const-class v6, Lf;

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lf;

    invoke-interface {v0}, Lf;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v0, v1

    add-int/lit8 v0, v0, -0x2

    array-length v6, v5

    if-ne v0, v6, :cond_190

    move v0, v3

    :goto_177
    array-length v6, v5

    if-ge v0, v6, :cond_1a3

    add-int/lit8 v6, v0, 0x2

    aget-char v6, v1, v6

    aget-byte v7, v5, v0

    if-eq v6, v7, :cond_18d

    move v0, v3

    :goto_183
    if-eqz v0, :cond_190

    iget-object v0, p0, Lb;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1b

    :cond_18d
    add-int/lit8 v0, v0, 0x1

    goto :goto_177

    :cond_190
    if-eqz v2, :cond_13f

    :cond_192
    iget-object v0, p0, Lb;->b:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_198
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_198} :catch_36

    goto/16 :goto_1b

    :catch_19a
    move-exception v1

    goto/16 :goto_ac

    :catch_19d
    move-exception v1

    goto/16 :goto_ac

    :catch_1a0
    move-exception v2

    goto/16 :goto_97

    :cond_1a3
    move v0, v4

    goto :goto_183

    :cond_1a5
    move-object v0, v1

    goto/16 :goto_106
.end method
